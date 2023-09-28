import 'dart:convert';
import 'package:events/bloc/event_list_bloc.dart';
import 'package:events/models/event_list_state.dart';
import 'package:events/pages/search_page.dart';
import 'package:events/pages/widget/event_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getCountries(context),
        builder: (context, snapshot) {
          return BlocBuilder<EventListBloc, EventListState>(
            builder: (context, state) {
              return Scaffold(
                  appBar: AppBar(
                    title: const Text(
                      'Events',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchPage()));
                          },
                          icon: SvgPicture.asset('assets/search.svg')),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert))
                    ],
                  ),
                  body: state.hasError || snapshot.hasError
                      ? const Center(
                          child: Text('Error'),
                        )
                      : state.isLoading || !snapshot.hasData
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : EventListWidget(
                              state: state,
                              countryData:
                                  snapshot.data as Map<String, String>));
            },
          );
        });
  }
}

Future<Map<String, String>> getCountries(BuildContext context) async {
  final json = await DefaultAssetBundle.of(context)
      .loadString('assets/country.json')
      .then((value) => jsonDecode(value)) as List;

  return {for (final e in json) e['name']: e['code2']};
}

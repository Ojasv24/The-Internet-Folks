import 'package:events/bloc/event_list_bloc.dart';
import 'package:events/models/event_list_state.dart';
import 'package:events/pages/widget/event_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventListBloc, EventListState>(
        builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Search'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Event Name',
                      prefixIcon: IconButton(
                          onPressed: () {
                            context.read<EventListBloc>().getEvents();
                          },
                          icon: SvgPicture.asset('assets/search.svg'))),
                  onChanged: (value) {
                    context.read<EventListBloc>().getEventBySearch(value);
                  },
                ),
              ),
              state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    )
                  : state.hasError
                      ? const Center(
                          child: Text('Error'),
                        )
                      : state.events.isEmpty
                          ? const Center(
                              child: Text(
                                'No Event Found',
                              ),
                            )
                          : Expanded(
                              child: EventListWidget(
                                  state: state, countryData: {})),
            ],
          ));
    });
  }
}

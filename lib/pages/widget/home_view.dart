import 'package:events/bloc/event_list_bloc.dart';
import 'package:events/models/event_list_state.dart';
import 'package:events/pages/widget/event_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventListBloc, EventListState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Events'),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                    ),
                    onChanged: (value) {
                      context.read<EventListBloc>().getEventBySearch(value);
                    },
                  ),
                ),
                state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.hasError
                        ? const Center(
                            child: Text('Error'),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: state.events.length,
                              itemBuilder: (context, index) {
                                var event = state.events[index];
                                return ListTile(
                                    title: Text(event.title),
                                    subtitle: Text(event.description),
                                    onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EventDetailPage(
                                                    id: event.id,
                                                  )),
                                        ));
                              },
                            ),
                          ),
              ],
            ));
      },
    );
  }
}

import 'package:events/bloc/event_detail_bloc.dart';
import 'package:events/models/event_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetailView extends StatelessWidget {
  const EventDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventDetailBloc, EventDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(child: Text(state.event.title)),
        );
      },
    );
  }
}

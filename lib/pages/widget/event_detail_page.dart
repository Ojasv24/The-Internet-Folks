import 'package:events/bloc/event_detail_bloc.dart';
import 'package:events/pages/widget/event_detail_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => EventDetailBloc()..getEventById(id),
        child: const EventDetailView());
  }
}

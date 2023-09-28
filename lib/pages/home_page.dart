import 'package:events/bloc/event_list_bloc.dart';
import 'package:events/pages/widget/home_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => EventListBloc()..getEvents(), child: const HomeView());
  }
}

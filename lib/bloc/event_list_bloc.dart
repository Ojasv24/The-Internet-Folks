import 'package:events/models/event_list_state.dart';
import 'package:events/repository/event_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventListBloc extends Cubit<EventListState> {
  EventListBloc() : super(const EventListState());
  final EventRepository eventRepository = EventRepository();
  void getEvents() async {
    emit(state.copyWith(isLoading: true));
    try {
      var events = await eventRepository.getAllEvents();
      emit(state.copyWith(events: events, isLoading: false));
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  void getEventBySearch(String search) async {
    emit(state.copyWith(isLoading: true));
    try {
      var events = await eventRepository.getEventBySearch(search);
      emit(state.copyWith(events: events, isLoading: false));
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }
}

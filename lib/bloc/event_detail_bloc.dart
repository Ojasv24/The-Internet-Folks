import 'package:events/models/event_detail_state.dart';
import 'package:events/repository/event_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetailBloc extends Cubit<EventDetailState> {
  final EventRepository eventRepository = EventRepository();
  EventDetailBloc()
      : super(EventDetailState(
            event: EventDetailState.initial().event,
            isLoading: false,
            isFailure: false,
            isSuccess: false));

  void getEventById(int id) async {
    emit(state.copyWith(isLoading: true));
    try {
      var event = await eventRepository.getEventById(id);
      emit(state.copyWith(event: event, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, isFailure: true));
    }
  }
}

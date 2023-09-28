import 'package:events/models/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_detail_state.freezed.dart';

@freezed
class EventDetailState with _$EventDetailState {
  const factory EventDetailState({
    required Event event,
    required bool isLoading,
    required bool isFailure,
    required bool isSuccess,
  }) = _EventDetailState;

  factory EventDetailState.initial() => EventDetailState(
        event: Event(
          id: 0,
          title: '',
          description: '',
          banner_image: '',
          date_time: DateTime.now(),
          organiser_name: '',
          organiser_icon: '',
          venue_name: '',
          venue_city: '',
          venue_country: '',
        ),
        isLoading: false,
        isFailure: false,
        isSuccess: false,
      );
}

import 'event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_list_state.freezed.dart';

@freezed
class EventListState with _$EventListState {
  const factory EventListState({
    @Default([]) List<Event> events,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _EventListState;
}

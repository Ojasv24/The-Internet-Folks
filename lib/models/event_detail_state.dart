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

}

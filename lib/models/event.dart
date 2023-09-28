import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String title,
    required String description,
    required String banner_image,
    required DateTime date_time,
    required String organiser_name,
    required String organiser_icon,
    required String venue_name,
    required String venue_city,
    required String venue_country,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String title,
    required String description,
    required String bannerImage,
    required DateTime dateTime,
    required String organiserName,
    required String organiserIcon,
    required String venueName,
    required String venueCity,
    required String venueCountry,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

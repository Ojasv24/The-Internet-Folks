// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      banner_image: json['banner_image'] as String,
      date_time: DateTime.parse(json['date_time'] as String),
      organiser_name: json['organiser_name'] as String,
      organiser_icon: json['organiser_icon'] as String,
      venue_name: json['venue_name'] as String,
      venue_city: json['venue_city'] as String,
      venue_country: json['venue_country'] as String,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'banner_image': instance.banner_image,
      'date_time': instance.date_time.toIso8601String(),
      'organiser_name': instance.organiser_name,
      'organiser_icon': instance.organiser_icon,
      'venue_name': instance.venue_name,
      'venue_city': instance.venue_city,
      'venue_country': instance.venue_country,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      bannerImage: json['bannerImage'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      organiserName: json['organiserName'] as String,
      organiserIcon: json['organiserIcon'] as String,
      venueName: json['venueName'] as String,
      venueCity: json['venueCity'] as String,
      venueCountry: json['venueCountry'] as String,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'bannerImage': instance.bannerImage,
      'dateTime': instance.dateTime.toIso8601String(),
      'organiserName': instance.organiserName,
      'organiserIcon': instance.organiserIcon,
      'venueName': instance.venueName,
      'venueCity': instance.venueCity,
      'venueCountry': instance.venueCountry,
    };

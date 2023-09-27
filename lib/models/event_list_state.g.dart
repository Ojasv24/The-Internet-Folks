// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventListState _$$_EventListStateFromJson(Map<String, dynamic> json) =>
    _$_EventListState(
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      hasError: json['hasError'] as bool? ?? false,
    );

Map<String, dynamic> _$$_EventListStateToJson(_$_EventListState instance) =>
    <String, dynamic>{
      'events': instance.events,
      'isLoading': instance.isLoading,
      'hasError': instance.hasError,
    };

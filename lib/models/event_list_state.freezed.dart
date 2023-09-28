// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventListState {
  List<Event> get events => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventListStateCopyWith<EventListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListStateCopyWith<$Res> {
  factory $EventListStateCopyWith(
          EventListState value, $Res Function(EventListState) then) =
      _$EventListStateCopyWithImpl<$Res, EventListState>;
  @useResult
  $Res call({List<Event> events, bool isLoading, bool hasError});
}

/// @nodoc
class _$EventListStateCopyWithImpl<$Res, $Val extends EventListState>
    implements $EventListStateCopyWith<$Res> {
  _$EventListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventListStateCopyWith<$Res>
    implements $EventListStateCopyWith<$Res> {
  factory _$$_EventListStateCopyWith(
          _$_EventListState value, $Res Function(_$_EventListState) then) =
      __$$_EventListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Event> events, bool isLoading, bool hasError});
}

/// @nodoc
class __$$_EventListStateCopyWithImpl<$Res>
    extends _$EventListStateCopyWithImpl<$Res, _$_EventListState>
    implements _$$_EventListStateCopyWith<$Res> {
  __$$_EventListStateCopyWithImpl(
      _$_EventListState _value, $Res Function(_$_EventListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_EventListState(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventListState implements _EventListState {
  const _$_EventListState(
      {final List<Event> events = const [],
      this.isLoading = false,
      this.hasError = false})
      : _events = events;

  final List<Event> _events;
  @override
  @JsonKey()
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;

  @override
  String toString() {
    return 'EventListState(events: $events, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventListState &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventListStateCopyWith<_$_EventListState> get copyWith =>
      __$$_EventListStateCopyWithImpl<_$_EventListState>(this, _$identity);
}

abstract class _EventListState implements EventListState {
  const factory _EventListState(
      {final List<Event> events,
      final bool isLoading,
      final bool hasError}) = _$_EventListState;

  @override
  List<Event> get events;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_EventListStateCopyWith<_$_EventListState> get copyWith =>
      throw _privateConstructorUsedError;
}

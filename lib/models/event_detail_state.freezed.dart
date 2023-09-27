// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDetailState {
  Event get event => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDetailStateCopyWith<EventDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailStateCopyWith<$Res> {
  factory $EventDetailStateCopyWith(
          EventDetailState value, $Res Function(EventDetailState) then) =
      _$EventDetailStateCopyWithImpl<$Res, EventDetailState>;
  @useResult
  $Res call({Event event, bool isLoading, bool isFailure, bool isSuccess});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventDetailStateCopyWithImpl<$Res, $Val extends EventDetailState>
    implements $EventDetailStateCopyWith<$Res> {
  _$EventDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? isLoading = null,
    Object? isFailure = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventDetailStateCopyWith<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  factory _$$_EventDetailStateCopyWith(
          _$_EventDetailState value, $Res Function(_$_EventDetailState) then) =
      __$$_EventDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Event event, bool isLoading, bool isFailure, bool isSuccess});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$_EventDetailStateCopyWithImpl<$Res>
    extends _$EventDetailStateCopyWithImpl<$Res, _$_EventDetailState>
    implements _$$_EventDetailStateCopyWith<$Res> {
  __$$_EventDetailStateCopyWithImpl(
      _$_EventDetailState _value, $Res Function(_$_EventDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? isLoading = null,
    Object? isFailure = null,
    Object? isSuccess = null,
  }) {
    return _then(_$_EventDetailState(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventDetailState implements _EventDetailState {
  const _$_EventDetailState(
      {required this.event,
      required this.isLoading,
      required this.isFailure,
      required this.isSuccess});

  @override
  final Event event;
  @override
  final bool isLoading;
  @override
  final bool isFailure;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'EventDetailState(event: $event, isLoading: $isLoading, isFailure: $isFailure, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDetailState &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, event, isLoading, isFailure, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDetailStateCopyWith<_$_EventDetailState> get copyWith =>
      __$$_EventDetailStateCopyWithImpl<_$_EventDetailState>(this, _$identity);
}

abstract class _EventDetailState implements EventDetailState {
  const factory _EventDetailState(
      {required final Event event,
      required final bool isLoading,
      required final bool isFailure,
      required final bool isSuccess}) = _$_EventDetailState;

  @override
  Event get event;
  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  bool get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_EventDetailStateCopyWith<_$_EventDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

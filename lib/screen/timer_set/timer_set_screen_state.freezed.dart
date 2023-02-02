// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_set_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerSetScreenState {
  double get workingSetPrice => throw _privateConstructorUsedError;
  TimeOfDay get workingSetTime => throw _privateConstructorUsedError;
  bool get isTimer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerSetScreenStateCopyWith<TimerSetScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSetScreenStateCopyWith<$Res> {
  factory $TimerSetScreenStateCopyWith(
          TimerSetScreenState value, $Res Function(TimerSetScreenState) then) =
      _$TimerSetScreenStateCopyWithImpl<$Res, TimerSetScreenState>;
  @useResult
  $Res call({double workingSetPrice, TimeOfDay workingSetTime, bool isTimer});
}

/// @nodoc
class _$TimerSetScreenStateCopyWithImpl<$Res, $Val extends TimerSetScreenState>
    implements $TimerSetScreenStateCopyWith<$Res> {
  _$TimerSetScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingSetPrice = null,
    Object? workingSetTime = null,
    Object? isTimer = null,
  }) {
    return _then(_value.copyWith(
      workingSetPrice: null == workingSetPrice
          ? _value.workingSetPrice
          : workingSetPrice // ignore: cast_nullable_to_non_nullable
              as double,
      workingSetTime: null == workingSetTime
          ? _value.workingSetTime
          : workingSetTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isTimer: null == isTimer
          ? _value.isTimer
          : isTimer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerSetScreenStateCopyWith<$Res>
    implements $TimerSetScreenStateCopyWith<$Res> {
  factory _$$_TimerSetScreenStateCopyWith(_$_TimerSetScreenState value,
          $Res Function(_$_TimerSetScreenState) then) =
      __$$_TimerSetScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double workingSetPrice, TimeOfDay workingSetTime, bool isTimer});
}

/// @nodoc
class __$$_TimerSetScreenStateCopyWithImpl<$Res>
    extends _$TimerSetScreenStateCopyWithImpl<$Res, _$_TimerSetScreenState>
    implements _$$_TimerSetScreenStateCopyWith<$Res> {
  __$$_TimerSetScreenStateCopyWithImpl(_$_TimerSetScreenState _value,
      $Res Function(_$_TimerSetScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingSetPrice = null,
    Object? workingSetTime = null,
    Object? isTimer = null,
  }) {
    return _then(_$_TimerSetScreenState(
      workingSetPrice: null == workingSetPrice
          ? _value.workingSetPrice
          : workingSetPrice // ignore: cast_nullable_to_non_nullable
              as double,
      workingSetTime: null == workingSetTime
          ? _value.workingSetTime
          : workingSetTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isTimer: null == isTimer
          ? _value.isTimer
          : isTimer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TimerSetScreenState implements _TimerSetScreenState {
  const _$_TimerSetScreenState(
      {this.workingSetPrice = 0,
      this.workingSetTime = const TimeOfDay(hour: 0, minute: 0),
      this.isTimer = false});

  @override
  @JsonKey()
  final double workingSetPrice;
  @override
  @JsonKey()
  final TimeOfDay workingSetTime;
  @override
  @JsonKey()
  final bool isTimer;

  @override
  String toString() {
    return 'TimerSetScreenState(workingSetPrice: $workingSetPrice, workingSetTime: $workingSetTime, isTimer: $isTimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerSetScreenState &&
            (identical(other.workingSetPrice, workingSetPrice) ||
                other.workingSetPrice == workingSetPrice) &&
            (identical(other.workingSetTime, workingSetTime) ||
                other.workingSetTime == workingSetTime) &&
            (identical(other.isTimer, isTimer) || other.isTimer == isTimer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, workingSetPrice, workingSetTime, isTimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerSetScreenStateCopyWith<_$_TimerSetScreenState> get copyWith =>
      __$$_TimerSetScreenStateCopyWithImpl<_$_TimerSetScreenState>(
          this, _$identity);
}

abstract class _TimerSetScreenState implements TimerSetScreenState {
  const factory _TimerSetScreenState(
      {final double workingSetPrice,
      final TimeOfDay workingSetTime,
      final bool isTimer}) = _$_TimerSetScreenState;

  @override
  double get workingSetPrice;
  @override
  TimeOfDay get workingSetTime;
  @override
  bool get isTimer;
  @override
  @JsonKey(ignore: true)
  _$$_TimerSetScreenStateCopyWith<_$_TimerSetScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  double get workingPrice => throw _privateConstructorUsedError;
  int get workingTime => throw _privateConstructorUsedError;

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
  $Res call({double workingPrice, int workingTime});
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
    Object? workingPrice = null,
    Object? workingTime = null,
  }) {
    return _then(_value.copyWith(
      workingPrice: null == workingPrice
          ? _value.workingPrice
          : workingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      workingTime: null == workingTime
          ? _value.workingTime
          : workingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherForecastPanelStateCopyWith<$Res>
    implements $TimerSetScreenStateCopyWith<$Res> {
  factory _$$_WeatherForecastPanelStateCopyWith(
          _$_WeatherForecastPanelState value,
          $Res Function(_$_WeatherForecastPanelState) then) =
      __$$_WeatherForecastPanelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double workingPrice, int workingTime});
}

/// @nodoc
class __$$_WeatherForecastPanelStateCopyWithImpl<$Res>
    extends _$TimerSetScreenStateCopyWithImpl<$Res,
        _$_WeatherForecastPanelState>
    implements _$$_WeatherForecastPanelStateCopyWith<$Res> {
  __$$_WeatherForecastPanelStateCopyWithImpl(
      _$_WeatherForecastPanelState _value,
      $Res Function(_$_WeatherForecastPanelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingPrice = null,
    Object? workingTime = null,
  }) {
    return _then(_$_WeatherForecastPanelState(
      workingPrice: null == workingPrice
          ? _value.workingPrice
          : workingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      workingTime: null == workingTime
          ? _value.workingTime
          : workingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherForecastPanelState implements _WeatherForecastPanelState {
  const _$_WeatherForecastPanelState(
      {this.workingPrice = 0, this.workingTime = 0});

  @override
  @JsonKey()
  final double workingPrice;
  @override
  @JsonKey()
  final int workingTime;

  @override
  String toString() {
    return 'TimerSetScreenState(workingPrice: $workingPrice, workingTime: $workingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherForecastPanelState &&
            (identical(other.workingPrice, workingPrice) ||
                other.workingPrice == workingPrice) &&
            (identical(other.workingTime, workingTime) ||
                other.workingTime == workingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workingPrice, workingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherForecastPanelStateCopyWith<_$_WeatherForecastPanelState>
      get copyWith => __$$_WeatherForecastPanelStateCopyWithImpl<
          _$_WeatherForecastPanelState>(this, _$identity);
}

abstract class _WeatherForecastPanelState implements TimerSetScreenState {
  const factory _WeatherForecastPanelState(
      {final double workingPrice,
      final int workingTime}) = _$_WeatherForecastPanelState;

  @override
  double get workingPrice;
  @override
  int get workingTime;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastPanelStateCopyWith<_$_WeatherForecastPanelState>
      get copyWith => throw _privateConstructorUsedError;
}
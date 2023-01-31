import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_set_screen_state.freezed.dart';

@freezed
class TimerSetScreenState with _$TimerSetScreenState {
  const factory TimerSetScreenState({
    @Default(0) double workingPrice,
    @Default(TimeOfDay(hour: 0, minute: 0)) TimeOfDay workingTime,
  }) = _TimerSetScreenState;
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_set_screen_state.freezed.dart';

@freezed
class TimerSetScreenState with _$TimerSetScreenState {
  const factory TimerSetScreenState({
    @Default(0) double workingSetPrice,
    @Default(TimeOfDay(hour: 0, minute: 0)) TimeOfDay workingSetTime,
    @Default(false) bool isTimer,
  }) = _TimerSetScreenState;
}

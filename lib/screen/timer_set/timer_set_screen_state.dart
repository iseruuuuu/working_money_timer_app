import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_set_screen_state.freezed.dart';

@freezed
class TimerSetScreenState with _$TimerSetScreenState {
  const factory TimerSetScreenState({
    @Default(0) double workingPrice,
    @Default(0) int workingTime,
  }) = _WeatherForecastPanelState;
}

final timerSetScreenStateProvider = StateProvider<TimerSetScreenState>((ref) {
  return const TimerSetScreenState();
});

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:work_record_app/screen/timer/timer_screen.dart';
import 'package:work_record_app/screen/timer_set/timer_set_screen_state.dart';

final timerSetScreenStateNotifierProvider =
    StateNotifierProvider<TimerSetScreenStateNotifier, TimerSetScreenState>(
        (ref) {
  return TimerSetScreenStateNotifier();
});

class TimerSetScreenStateNotifier extends StateNotifier<TimerSetScreenState> {
  TimerSetScreenStateNotifier() : super(const TimerSetScreenState());

  void setTime(BuildContext context) async {
    final selectTime = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 1, minute: 0),
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (selectTime != null) {
      state = state.copyWith(workingTime: selectTime);
    }
  }

  void onChanged(String value) {
    state = state.copyWith(workingPrice: double.parse(value));
  }

  void onTapTimer(BuildContext context) {
    if (state.workingTime.hour == 0 && state.workingTime.minute == 0 ||
        state.workingPrice == 0) {
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TimerScreen(
            workingPrice: state.workingPrice,
            workingTime: state.workingTime,
          ),
        ),
      );
    }
  }
}

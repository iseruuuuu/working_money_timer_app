// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
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
      //TODO 設定時間の初期値を０時間０分にする。
      initialTime: const TimeOfDay(hour: 1, minute: 0),
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (selectTime != null) {
      state = state.copyWith(workingTime: selectTime);
    }
  }

  void closeKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  void onChanged(String value) {
    state = state.copyWith(workingPrice: double.parse(value));
  }

  void onTapTimer(BuildContext context) {
    if (state.workingTime.hour == 0 && state.workingTime.minute == 0 ||
        state.workingPrice == 0) {
      //TODO ダイアログorSnackBarを出す。
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

// Flutter imports:
import 'dart:math';

import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:work_record_app/l10n/l10n.dart';
import 'package:work_record_app/screen/timer/timer_screen.dart';

// Project imports:
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
      initialTime: const TimeOfDay(hour: 0, minute: 0),
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (selectTime != null) {
      state = state.copyWith(workingSetTime: selectTime);
    }
  }

  void closeKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  void onChanged(String value) {
    state = state.copyWith(workingSetPrice: double.parse(value));
  }

  void onTapTimer(BuildContext context) {
    if (state.workingSetTime.hour == 0 && state.workingSetTime.minute == 0 ||
        state.workingSetPrice == 0) {
      openSnackBar(context);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TimerScreen(
            workingPrice: state.workingSetPrice,
            workingTime: state.workingSetTime,
          ),
        ),
      );
    }
  }

  void openSnackBar(BuildContext context) {
    final l10n = L10n.of(context)!;
    var snackBar = SnackBar(content: Text(l10n.snack_bar));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

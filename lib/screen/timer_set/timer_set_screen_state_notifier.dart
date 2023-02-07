// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter_picker/picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:work_record_app/admob/admob_interstitial.dart';
import 'package:work_record_app/constants/picker_constants.dart';
import 'package:work_record_app/l10n/l10n.dart';
import 'package:work_record_app/screen/timer/timer_screen.dart';
import 'package:work_record_app/screen/timer_set/timer_set_screen_state.dart';

final timerSetScreenStateNotifierProvider =
    StateNotifierProvider<TimerSetScreenStateNotifier, TimerSetScreenState>(
        (ref) {
  return TimerSetScreenStateNotifier(const TimerSetScreenState());
});

class TimerSetScreenStateNotifier extends StateNotifier<TimerSetScreenState> {
  TimerSetScreenStateNotifier(
    TimerSetScreenState state,
  ) : super(state) {
    initState();
  }

  AdmobInterstitial adInterstitial = AdmobInterstitial();

  void initState() {
    loadAppTracking();
    AdmobInterstitial().createAd();
    adInterstitial.createAd();
  }

  Future<void> loadAppTracking() async {
    if (await AppTrackingTransparency.trackingAuthorizationStatus ==
        TrackingStatus.notDetermined) {
      await AppTrackingTransparency.requestTrackingAuthorization();
    }
  }

  void setTime(BuildContext context) async {
    final l10n = L10n.of(context)!;
    Picker(
      adapter: PickerDataAdapter<String>(
        pickerData: const JsonDecoder().convert(pickerConstants),
        isArray: true,
      ),
      hideHeader: true,
      title: Center(child: Text(l10n.pickerTitle)),
      //TODO ２つのボタンの位置を調整したい
      cancelText: l10n.pickerCancel,
      confirmText: l10n.pickerConfirm,
      onConfirm: (Picker picker, List value) {
        state = state.copyWith(
          workingSetTime: TimeOfDay(
            hour: value[0],
            minute: value[1],
          ),
        );
      },
    ).showDialog(context);
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
    adInterstitial.showAd();
  }
}

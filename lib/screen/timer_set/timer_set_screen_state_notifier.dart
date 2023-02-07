// Flutter imports:
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:work_record_app/admob/admob_interstitial.dart';

// Project imports:
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
    DatePicker.showTime12hPicker(
      context,
      onConfirm: (date) {
        state = state.copyWith(
          workingSetTime: TimeOfDay(
            hour: date.hour,
            minute: date.minute,
          ),
        );
      },
      showTitleActions: true,
      currentTime: DateTime(2000, 1, 1, 0, 0),
      locale: LocaleType.jp,
    );
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

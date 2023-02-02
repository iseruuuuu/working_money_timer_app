// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:stop_watch_timer/stop_watch_timer.dart';
//
// import '../timer_set/timer_set_screen_state.dart';
//
// final timerScreenStateNotifierProvider = StateNotifierProvider.autoDispose<
//     TimerScreenStateNotifier, TimerSetScreenState>((ref) {
//   return TimerScreenStateNotifier(
//     ref,
//     const TimerSetScreenState(),
//   );
// });
//
// class TimerScreenStateNotifier extends StateNotifier<TimerSetScreenState> {
//   TimerScreenStateNotifier(
//     this.ref,
//     TimerSetScreenState state,
//   ) : super(state) {
//     initState();
//   }
//
//   final Ref ref;
//
//   late Timer workingTimer;
//   late StopWatchTimer countDownTimer;
//   late StopWatchTimer countUpTimer;
//   double workPrice = 0;
//
//   void initState() {
//     //TODO 秒給(動いていない)workingSetPriceが空になっている
//     workingTimer = countTimer(state.workingSetPrice);
//
//     //TODO カウントアップ(動いている)
//     countUpTimer = countUp();
//     countUpTimer.onStartTimer();
//     //TODO カウントダウン(動いていない)workingSetTimeが空になっている
//     countDownTimer = countDown(state.workingSetTime);
//     countDownTimer.onStartTimer();
//     state = state.copyWith(isTimer: true);
//   }
//
//   StopWatchTimer countDown(TimeOfDay workingTime) {
//     final amountWorkHour = workingTime.hour * 3600;
//     final amountWorkMinute = workingTime.minute * 60;
//     final amountWorkTime = amountWorkHour + amountWorkMinute;
//     return StopWatchTimer(
//       presetMillisecond: StopWatchTimer.getMilliSecFromSecond(amountWorkTime),
//       mode: StopWatchMode.countDown,
//     );
//   }
//
//   StopWatchTimer countUp() {
//     return StopWatchTimer(
//       presetMillisecond: StopWatchTimer.getMilliSecFromSecond(0),
//       mode: StopWatchMode.countUp,
//     );
//   }
//
//   Timer countTimer(double workingPrice) {
//     return Timer.periodic(
//       const Duration(seconds: 1),
//       (Timer timer) {
//         workingPrice = workingPrice + workingPrice / 60 / 60;
//         workingPrice = double.parse(workingPrice.toStringAsFixed(2));
//         state = state.copyWith(workingSetPrice: workPrice);
//       },
//     );
//   }
//
//   void startWorking(double workPrice) {
//     if (!state.isTimer) {
//       state = state.copyWith(
//         isTimer: true,
//         workingSetPrice: workPrice,
//       );
//       workingTimer = countTimer(workPrice);
//     }
//   }
//
//   void stopWorking() {
//     state = state.copyWith(isTimer: false);
//     workingTimer.cancel();
//   }
//
//   @override
//   void dispose() async {
//     super.dispose();
//     await countDownTimer.dispose();
//     await countUpTimer.dispose();
//     workingTimer.cancel();
//   }
//
//   void startTime(double workPrice, TimeOfDay workingSetTime) {
//     countDownTimer = countDown(workingSetTime);
//     countDownTimer.onStartTimer();
//     countUpTimer.onStartTimer();
//     startWorking(workPrice);
//   }
//
//   void stopTime() {
//     countDownTimer.onStopTimer();
//     countUpTimer.onStopTimer();
//     stopWorking();
//   }
// }

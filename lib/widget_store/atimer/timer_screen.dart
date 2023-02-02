// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:stop_watch_timer/stop_watch_timer.dart';
// import 'package:work_record_app/constants/color_constants.dart';
// import 'package:work_record_app/constants/style_constants.dart';
// import 'package:work_record_app/screen/atimer/timer_screen_state_notifier.dart';
// import 'package:work_record_app/screen/timer_set/timer_set_screen_state_notifier.dart';
//
// class TimerScreen extends ConsumerWidget {
//   const TimerScreen({
//     Key? key,
//     required this.workingTime,
//     required this.workingPrice,
//   }) : super(key: key);
//
//   final TimeOfDay workingTime;
//   final double workingPrice;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(timerScreenStateNotifierProvider.notifier);
//     final state2 = ref.watch(timerScreenStateNotifierProvider);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: ColorConstants.appBarColor,
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           Text('労働残り時間', style: StyleConstants.timerLabel),
//           StreamBuilder<int>(
//             stream: state.countDownTimer.rawTime,
//             initialData: state.countDownTimer.rawTime.value,
//             builder: (context, snap) {
//               final value = snap.data!;
//               final displayTime =
//                   StopWatchTimer.getDisplayTime(value, hours: true);
//               return Column(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Text(
//                       displayTime,
//                       style: StyleConstants.timeLabel,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//           Text('働いた時間', style: StyleConstants.timerLabel),
//           StreamBuilder<int>(
//             stream: state.countUpTimer.rawTime,
//             initialData: state.countUpTimer.rawTime.value,
//             builder: (context, snap) {
//               final value = snap.data!;
//               final displayTime =
//                   StopWatchTimer.getDisplayTime(value, hours: true);
//               return Column(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Text(
//                       displayTime,
//                       style: StyleConstants.timeLabel,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//           Text('稼いだ額', style: StyleConstants.timerLabel),
//           Text('${state2.workingSetPrice}円', style: StyleConstants.timerLabel),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 4),
//                 child: ElevatedButton(
//                   onPressed: () => ref
//                       .read(timerScreenStateNotifierProvider.notifier)
//                       .startTime(workingPrice, workingTime),
//                   child: const Text(
//                     'Start',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 4),
//                 child: ElevatedButton(
//                   onPressed: () => ref
//                       .read(timerScreenStateNotifierProvider.notifier)
//                       .stopTime(),
//                   child: const Text(
//                     'Stop',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

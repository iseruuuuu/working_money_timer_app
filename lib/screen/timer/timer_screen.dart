// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:stop_watch_timer/stop_watch_timer.dart';

// Project imports:
import 'package:work_record_app/constants/color_constants.dart';
import 'package:work_record_app/constants/style_constants.dart';
import 'package:work_record_app/extension/extension.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({
    Key? key,
    required this.workingPrice,
    required this.workingTime,
  }) : super(key: key);

  final TimeOfDay workingTime;
  final double workingPrice;

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> with WidgetsBindingObserver {
  final _isHours = true;
  final StopWatchTimer countUpTimer = StopWatchTimer(
    presetMillisecond: StopWatchTimer.getMilliSecFromSecond(0),
    mode: StopWatchMode.countUp,
  );

  late Timer workingTimer;
  late StopWatchTimer countDownTimer;
  bool isTimer = false;
  double workingPrice = 0;

  @override
  void initState() {
    super.initState();
    countUpTimer.onStartTimer();
    countDownTimer = countDown(widget.workingTime);
    countDownTimer.onStartTimer();
    workingTimer = countTimer();
    isTimer = true;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
    await countDownTimer.dispose();
    await countUpTimer.dispose();
    workingTimer.cancel();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {}

  StopWatchTimer countDown(TimeOfDay workingTime) {
    final amountWorkHour = workingTime.hour * 3600;
    final amountWorkMinute = workingTime.minute * 60;
    final amountWorkTime = amountWorkHour + amountWorkMinute;
    return StopWatchTimer(
      presetMillisecond: StopWatchTimer.getMilliSecFromSecond(amountWorkTime),
      mode: StopWatchMode.countDown,
    );
  }

  Timer countTimer() {
    return Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        setState(() {
          workingPrice = workingPrice + widget.workingPrice / 60 / 60;
          workingPrice = double.parse(workingPrice.toStringAsFixed(2));
        });
      },
    );
  }

  void start() {
    countDownTimer.onStartTimer();
    countUpTimer.onStartTimer();
    startWorking();
  }

  void stop() {
    countDownTimer.onStopTimer();
    countUpTimer.onStopTimer();
    stopWorking();
  }

  void startWorking() {
    if (!isTimer) {
      isTimer = true;
      workingTimer = countTimer();
    }
  }

  void stopWorking() {
    isTimer = false;
    workingTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appBarColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text('労働残り時間', style: StyleConstants.timerLabel),
          ),
          StreamBuilder<int>(
            stream: countDownTimer.rawTime,
            initialData: countDownTimer.rawTime.value,
            builder: (context, snap) {
              final value = snap.data!;
              final displayTime =
                  StopWatchTimer.getDisplayTime(value, hours: _isHours);
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      displayTime,
                      style: StyleConstants.timeLabel,
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text('働いた時間', style: StyleConstants.timerLabel),
          ),
          StreamBuilder<int>(
            stream: countUpTimer.rawTime,
            initialData: countUpTimer.rawTime.value,
            builder: (context, snap) {
              final value = snap.data!;
              final displayTime =
                  StopWatchTimer.getDisplayTime(value, hours: _isHours);
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      displayTime,
                      style: StyleConstants.timeLabel,
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text('稼いだ額', style: StyleConstants.timerLabel),
          ),
          Text('$workingPrice円', style: StyleConstants.timerLabel),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                width: context.screenWidth / 3,
                height: 60,
                child: ElevatedButton(
                  style: StyleConstants.timerButtonStyle,
                  onPressed: start,
                  child: Text(
                    'START',
                    style: StyleConstants.timerButton,
                  ),
                ),
              ),
              SizedBox(
                width: context.screenWidth / 3,
                height: 60,
                child: ElevatedButton(
                  style: StyleConstants.timerButtonStyle,
                  onPressed: stop,
                  child: Text(
                    'STOP',
                    style: StyleConstants.timerButton,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

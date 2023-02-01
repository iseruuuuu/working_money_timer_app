import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:work_record_app/constants/color_constants.dart';
import 'package:work_record_app/constants/style_constants.dart';

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

class _TimerScreenState extends State<TimerScreen> {
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
    //カウントアップ
    countUpTimer.onStartTimer();
    //カウントダウン
    countDownTimer = countDown(widget.workingTime);
    countDownTimer.onStartTimer();
    //秒給
    workingTimer = countTimer();
    isTimer = true;
  }

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
  void dispose() async {
    super.dispose();
    await countDownTimer.dispose();
    await countUpTimer.dispose();
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
          Text('労働残り時間', style: StyleConstants.timerLabel),
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
          Text('働いた時間', style: StyleConstants.timerLabel),
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
          Text('稼いだ額', style: StyleConstants.timerLabel),
          Text('$workingPrice円', style: StyleConstants.timerLabel),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  onPressed: () {
                    countDownTimer.onStartTimer();
                    countUpTimer.onStartTimer();
                    startWorking();
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  onPressed: () {
                    countDownTimer.onStopTimer();
                    countUpTimer.onStopTimer();
                    stopWorking();
                  },
                  child: const Text(
                    'Stop',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

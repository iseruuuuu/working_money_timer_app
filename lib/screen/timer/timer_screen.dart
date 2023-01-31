import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

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
  final stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      presetMillisecond: StopWatchTimer.getMilliSecFromMinute(0),
      onChangeRawMinute: (value) {
        // print(value);
      },
      onChangeRawSecond: (value) {
        print(value);
      });

  @override
  void initState() {
    super.initState();

    countDown();
    countUpPrice();
  }

  void countDown() {
    //TODO countDownタイマーを進める
    stopWatchTimer.onStartTimer();
  }

  void countUpPrice() {
    //TODO 時給を増やす
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('労働残り時間'),
          Text('${widget.workingTime}' ':' '${widget.workingTime}'),
          Text('Working'),
          Text('${widget.workingPrice} 円'),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Start')),
              ElevatedButton(onPressed: () {}, child: Text('Pause')),
              ElevatedButton(onPressed: () {}, child: Text('Resume')),
              ElevatedButton(onPressed: () {}, child: Text('Restart')),
            ],
          ),
        ],
      ),
    );
  }
}

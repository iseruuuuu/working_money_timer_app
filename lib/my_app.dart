// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:work_record_app/screen/timer_set/timer_set_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TimerSetScreen(),
    );
  }
}

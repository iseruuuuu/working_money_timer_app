// Flutter imports:
import 'package:flutter/material.dart';
import 'package:work_record_app/l10n/l10n.dart';

// Project imports:
import 'package:work_record_app/screen/timer_set/timer_set_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: const [
        Locale('ja'),
        Locale('en'),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TimerSetScreen(),
    );
  }
}

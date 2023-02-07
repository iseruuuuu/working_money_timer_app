// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:work_record_app/l10n/l10n.dart';
import 'package:work_record_app/screen/timer_set/timer_set_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.light),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: const [
        Locale('ja'),
        Locale('en'),
      ],
      title: 'Flutter Demo',
      home: const TimerSetScreen(),
    );
  }
}

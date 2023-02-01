// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:work_record_app/constants/color_constants.dart';
import 'package:work_record_app/constants/style_constants.dart';
import 'package:work_record_app/extension/extension.dart';
import 'package:work_record_app/screen/timer_set/timer_set_screen_state_notifier.dart';

class TimerSetScreen extends ConsumerWidget {
  const TimerSetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timerSetScreenStateNotifierProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.appBarColor,
        elevation: 0,
        title: const Text(
          '労働タイマー',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: ListTile(
                tileColor: ColorConstants.white,
                leading: Text(
                  '設定時間',
                  style: StyleConstants.titleStyle,
                ),
                trailing: Text(
                  (state.workingTime.minute == 0 && state.workingTime.hour == 0)
                      ? ''
                      : '${state.workingTime.hour}時間${state.workingTime.minute}分',
                  style: StyleConstants.timeStyle,
                ),
                onTap: () => ref
                    .read(timerSetScreenStateNotifierProvider.notifier)
                    .setTime(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                onChanged: (value) => ref
                    .read(timerSetScreenStateNotifierProvider.notifier)
                    .onChanged(value),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  labelText: '時給',
                  labelStyle: StyleConstants.titleStyle,
                  filled: true,
                  fillColor: ColorConstants.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(
                width: context.screenWidth,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => ref
                      .read(timerSetScreenStateNotifierProvider.notifier)
                      .onTapTimer(context),
                  style: StyleConstants.buttonStyle,
                  child: Text(
                    'スタート',
                    style: StyleConstants.buttonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

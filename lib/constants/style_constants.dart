// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:work_record_app/constants/color_constants.dart';

class StyleConstants {
  static TextStyle appBarStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorConstants.black,
  );

  static TextStyle timeStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: ColorConstants.black,
    fontSize: 18,
  );

  static TextStyle buttonTextStyle = TextStyle(
    color: ColorConstants.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: ColorConstants.white,
    backgroundColor: ColorConstants.appBarColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );

  static TextStyle timerLabel = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle timeLabel = const TextStyle(
    fontSize: 45,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle timerButton = TextStyle(
    color: ColorConstants.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static ButtonStyle timerButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: ColorConstants.white,
    backgroundColor: ColorConstants.appBarColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
}

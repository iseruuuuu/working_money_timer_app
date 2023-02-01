import 'package:flutter/material.dart';
import 'package:work_record_app/constants/color_constants.dart';

class StyleConstants {
  static TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorConstants.grey,
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
    foregroundColor: Colors.white,
    backgroundColor: const Color(0xFF4A67AD),
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
}

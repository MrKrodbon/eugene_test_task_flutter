import 'dart:math';
import 'package:flutter/material.dart';

///const colors for application
class AppColors {
  ///Color of application at the beginning.
  static const Color _startColor = Color.fromARGB(0, 255, 0, 0);

  ///Get the value of startColor
  Color get startColor => _startColor;

  ///Randomize  color of ColorChangeScreen.
  Color randomizeColor() => Color(
        Random().nextInt(
          int.parse(
            startColor.toString(),
          ),
        ),
      );
}

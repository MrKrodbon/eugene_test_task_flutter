import 'dart:math';
import 'package:flutter/material.dart';

///const colors for application
class AppColors {
  ///Color of application at the beginning.
  static const int _startColor = 0xffffffff;
  Color _randomColor = const Color(_startColor);

  ///Get the value of startColor
  int get startColor => _startColor;

  ///Get the value of  _randomColor
  Color get randomColor => _randomColor;

  ///Randomize  color of ColorChangeScreen.
  Color randomizeColor() => _randomColor = Color(Random().nextInt(startColor));
}

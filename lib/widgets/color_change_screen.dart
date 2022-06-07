import 'dart:math';
import 'dart:ui';

import 'package:eugenesoshyn_testtaskflutter/resources/app_colors.dart';
import 'package:flutter/material.dart';

///Screen with randomized background colors
class ColorChangeScreen extends StatefulWidget {
  ///constructor of MyHomePage
  const ColorChangeScreen({Key? key}) : super(key: key);

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color _color = const Color(AppColors.startColor);

  void randomizeBackgroundColor() {
    setState(() {
      _color = Color(Random().nextInt(AppColors.startColor));
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => randomizeBackgroundColor(),
        child: Container(
          color: _color,
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}

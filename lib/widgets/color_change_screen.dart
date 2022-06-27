import 'dart:math';

import 'package:eugenesoshyn_testtaskflutter/resources/app_colors.dart';
import 'package:flutter/material.dart';

///Screen with randomized background colors.
class ColorChangeScreen extends StatefulWidget {
  ///constructor of ColorChangeScreen
  const ColorChangeScreen({Key? key}) : super(key: key);

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  final _random = Random();
  Color _startColor = Colors.red;
  final colorNumber = 256;
  @override
  void initState() {
    super.initState();
  }

  void randomizeColor() {
    _startColor = Color.fromARGB(
      _random.nextInt(colorNumber),
      _random.nextInt(colorNumber),
      _random.nextInt(colorNumber),
      _random.nextInt(colorNumber),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() {
          randomizeColor();
        }),
        child: Container(
          color: _startColor,
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

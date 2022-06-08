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
  final appColors = AppColors();

  @override
  void initState() {
    super.initState();
    appColors.startColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() {
          appColors.randomizeColor();
        }),
        child: Container(
          color: appColors.randomColor,
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

import 'package:eugenesoshyn_testtaskflutter/widgets/color_change_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

///main page screen
class MainScreen extends StatelessWidget {
  ///constructor of MainScreenWidget
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ColorChangeScreen(),
    );
  }
}

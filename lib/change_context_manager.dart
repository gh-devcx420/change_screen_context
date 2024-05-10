import 'package:flutter/material.dart';
import 'package:change_screen_context/screen1.dart';
import 'package:change_screen_context/screen2.dart';

class ChangeContextOnScreen extends StatefulWidget {
  const ChangeContextOnScreen({super.key});

  @override
  State<ChangeContextOnScreen> createState() => _ChangeContextOnScreenState();
}

class _ChangeContextOnScreenState extends State<ChangeContextOnScreen> {

  Widget? currentScreen;

  @override
  void initState() {
    currentScreen = Screen1(changeScreen);
    super.initState();
  }

  void changeScreen () {
    setState(() {
      currentScreen = const Screen2();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentScreen,
    );
  }
}
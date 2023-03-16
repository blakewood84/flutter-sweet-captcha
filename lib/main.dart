import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer' as devtools;

import 'package:rive/rive.dart';
import 'package:sweet_captcha/screens/captcha_screen.dart';

void main() {
  runApp(const App());
}

enum CaptchaOptions {
  one(Colors.redAccent, 1),
  two(Colors.amberAccent, 2),
  three(Colors.purpleAccent, 3),
  four(Colors.greenAccent, 4);

  const CaptchaOptions(
    this.color,
    this.numberValue,
  );

  final Color color;
  final int numberValue;
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Captcha Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const CaptchaScreen(),
    );
  }
}

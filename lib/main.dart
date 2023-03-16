import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer' as devtools;

import 'package:rive/rive.dart';
import 'package:sweet_captcha/screens/captcha_screen.dart';

void main() {
  runApp(const App());
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

import 'package:flutter/material.dart';

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

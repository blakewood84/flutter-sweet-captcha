import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sweet_captcha/features/captcha/ui/widgets/captcha.dart';
import 'package:sweet_captcha/main.dart';

class CaptchaScreen extends StatefulWidget {
  const CaptchaScreen({super.key});

  @override
  State<CaptchaScreen> createState() => _CaptchaScreenState();
}

class _CaptchaScreenState extends State<CaptchaScreen> {
  final _authenticatedNotifier = ValueNotifier(false);
  final targetCaptcha = CaptchaOptions.values.elementAt(
    Random().nextInt(4),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Captcha Screen'),
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return SizedBox(
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Captcha(),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer' as devtools;

import 'package:rive/rive.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CaptchaScreen(),
    );
  }
}

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
      appBar: AppBar(),
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
              children: [
                Container(
                  width: width * .8,
                  height: 140,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Draggable(
                            data: CaptchaOptions.one,
                            feedback: Material(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.orange,
                                child: const Center(
                                  child: Text('1'),
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.orange,
                              child: const Center(
                                child: Text('1'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Draggable(
                            data: CaptchaOptions.two,
                            feedback: Material(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.redAccent,
                                child: const Center(
                                  child: Text('2'),
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.redAccent,
                              child: const Center(
                                child: Text('2'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Draggable(
                            data: CaptchaOptions.three,
                            feedback: Material(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.greenAccent,
                                child: const Center(
                                  child: Text('3'),
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.greenAccent,
                              child: const Center(
                                child: Text('3'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Draggable(
                            data: CaptchaOptions.four,
                            feedback: Material(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.blueAccent,
                                child: const Center(
                                  child: Text('4'),
                                ),
                              ),
                            ),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.blueAccent,
                              child: const Center(
                                child: Text('4'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ValueListenableBuilder(
                        valueListenable: _authenticatedNotifier,
                        builder: (_, bool authenticated, __) {
                          // Authenticated Target
                          if (authenticated) {
                            return const AuthenticatedTarget();
                          }

                          return DragTarget<CaptchaOptions>(
                            onWillAccept: (data) {
                              if (data == targetCaptcha) {
                                devtools.log('Accepted!');
                                return true;
                              }
                              return false;
                            },
                            onAccept: (data) {
                              // When target is released, do something here
                              devtools.log('Accepted: $data');
                              _authenticatedNotifier.value = true;
                            },
                            onAcceptWithDetails: (details) {
                              // When target is released, do something here
                              devtools.log('onAcceptWithDetails: $details');
                            },
                            builder: (context, candidateData, rejectedData) {
                              // devtools.log('candidateData: $candidateData');
                              // devtools.log('rejectedData: $rejectedData');
                              return Container(
                                width: 60,
                                height: 60,
                                color: Colors.white,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class AuthenticatedTarget extends StatefulWidget {
  const AuthenticatedTarget({super.key});

  @override
  State<AuthenticatedTarget> createState() => _AuthenticatedTargetState();
}

class _AuthenticatedTargetState extends State<AuthenticatedTarget> {
  final _loadingNotifier = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await Future.delayed(const Duration(milliseconds: 1500));
        _loadingNotifier.value = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: ValueListenableBuilder(
        valueListenable: _loadingNotifier,
        builder: (_, bool isLoading, __) {
          if (isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return RiveAnimation.asset(
            'assets/rive/check_mark.riv1',
            onInit: (artBoard) {
              devtools.log('Init!');
            },
          );
        },
      ),
    );
  }
}

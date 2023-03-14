import 'package:flutter/material.dart';
import 'dart:developer' as devtools;

void main() {
  runApp(const App());
}

enum CaptchaOptions { one, two, three, four }

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Captcha Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.orange,
                                child: const Center(
                                  child: Text('1'),
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
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.redAccent,
                                child: const Center(
                                  child: Text('2'),
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
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.greenAccent,
                                child: const Center(
                                  child: Text('3'),
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
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.blueAccent,
                                child: const Center(
                                  child: Text('4'),
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
                        DragTarget<CaptchaOptions>(
                          onWillAccept: (data) {
                            if (data == CaptchaOptions.one) {
                              devtools.log('Accepted!');
                              return true;
                            }
                            return false;
                          },
                          onAccept: (data) {
                            // When target is released, do something here
                            devtools.log('Accepted: $data');
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
                              ),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Draggable(
                              data: CaptchaOptions.one,
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.redAccent,
                              ),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.redAccent,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Draggable(
                              data: CaptchaOptions.one,
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.greenAccent,
                              ),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.greenAccent,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Draggable(
                              data: CaptchaOptions.one,
                              feedback: Container(
                                width: 50,
                                height: 50,
                                color: Colors.blueAccent,
                              ),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          color: Colors.white,
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

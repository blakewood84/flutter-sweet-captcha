import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;
import 'package:sweet_captcha/features/captcha/ui/cubit/captcha_cubit.dart';

class Captcha extends StatelessWidget {
  const Captcha({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => CaptchaCubit(),
      child: BlocBuilder<CaptchaCubit, CaptchaState>(
        builder: (context, state) {
          return Container(
            width: size.width * .75,
            height: 110,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                width: 3,
                color: Colors.black,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Verify your real existence',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Drag and put the swimsuit in the suitcase.',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.amberAccent,
                            ),
                          ),
                          const SizedBox(width: 3.0),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.blueAccent,
                            ),
                          ),
                          const SizedBox(width: 3.0),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.purpleAccent,
                            ),
                          ),
                          const SizedBox(width: 3.0),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2.0,
                            vertical: 5.0,
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Reset',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      width: 55,
                      height: 55,
                      color: Colors.red,
                    ),
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

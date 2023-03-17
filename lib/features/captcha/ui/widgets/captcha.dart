import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider, ReadContext, RepositoryProvider;

import 'package:sweet_captcha/features/captcha/data/models/options.dart';
import 'package:sweet_captcha/features/captcha/data/repositories/captcha_repository.dart';
import 'package:sweet_captcha/features/captcha/ui/cubit/captcha_cubit.dart';
import 'package:sweet_captcha/features/captcha/ui/widgets/captcha_target.dart';

class Captcha extends StatelessWidget {
  const Captcha({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return RepositoryProvider(
      create: (context) => CaptchaRepository(),
      child: BlocProvider(
        create: (context) => CaptchaCubit(
          repository: context.read<CaptchaRepository>(),
        ),
        child: BlocBuilder<CaptchaCubit, CaptchaState>(
          builder: (context, state) {
            final captchaOptions = state.captchaOptions ?? <String>{};

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
                        Text(
                          'Drag and put the ${state.targetOption} in the suitcase.',
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 7.0),
                        Row(
                          children: [
                            ...captchaOptions.map(
                              (option) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 3.0),
                                  child: Draggable<String>(
                                    data: option,
                                    feedback: Material(
                                      color: Colors.transparent,
                                      child: Container(
                                        width: 28,
                                        height: 28,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4.0),
                                          color: Colors.redAccent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            option,
                                            style: const TextStyle(
                                              fontSize: 5,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    childWhenDragging: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.0),
                                        color: Colors.grey.withOpacity(.8),
                                      ),
                                    ),
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.0),
                                        color: Colors.redAccent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          option,
                                          style: const TextStyle(
                                            fontSize: 5,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            context.read<CaptchaCubit>().resetCaptcha();
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2.0,
                              vertical: 5.0,
                            ),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
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
                  const Expanded(
                    flex: 1,
                    child: CaptchaTarget(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

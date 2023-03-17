import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:sweet_captcha/constants/constants.dart';
import 'package:sweet_captcha/features/captcha/ui/cubit/captcha_cubit.dart';
import 'package:sweet_captcha/features/captcha/ui/widgets/verified_target.dart';

class CaptchaTarget extends StatelessWidget {
  const CaptchaTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaptchaCubit, CaptchaState>(
      builder: (context, state) {
        final attempts = (state.attempts ?? 0);
        switch (state.isVerified) {
          case false:
            return Center(
              child: DragTarget<CaptchaObject>(
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (option) {
                  context.read<CaptchaCubit>().verifyCaptcha(option);
                },
                builder: (context, candidateData, rejectedData) {
                  if (attempts > 3) {
                    return SizedBox(
                      width: 55,
                      height: 55,
                      child: Stack(
                        children: const [
                          Positioned.fill(
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.folder,
                                size: 50,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.slash,
                                size: 50,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  if (candidateData.isNotEmpty) {
                    return const SizedBox(
                      width: 55,
                      height: 55,
                      child: FaIcon(
                        FontAwesomeIcons.folderOpen,
                        size: 50,
                        color: Colors.black,
                      ),
                    );
                  }

                  return const SizedBox(
                    width: 55,
                    height: 55,
                    child: FaIcon(
                      FontAwesomeIcons.folder,
                      size: 50,
                      color: Colors.black,
                    ),
                  );
                },
              ),
            );

          case true:
            return const VerifiedTarget();
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

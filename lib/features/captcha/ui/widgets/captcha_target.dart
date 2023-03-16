import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sweet_captcha/features/captcha/data/models/options.dart';
import 'package:sweet_captcha/features/captcha/ui/cubit/captcha_cubit.dart';
import 'package:sweet_captcha/features/captcha/ui/widgets/verified_target.dart';

class CaptchaTarget extends StatelessWidget {
  const CaptchaTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaptchaCubit, CaptchaState>(
      builder: (context, state) {
        switch (state.isVerified) {
          case false:
            return Center(
              child: DragTarget<Options>(
                onWillAccept: (data) {
                  if (data == state.targetOption) {
                    return true;
                  }
                  return false;
                },
                onAccept: (option) {
                  context.read<CaptchaCubit>().verifyCaptcha(option);
                },
                builder: (context, candidateData, rejectedData) {
                  return const SizedBox(
                    width: 55,
                    height: 55,
                    child: Icon(
                      Icons.work_outline,
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

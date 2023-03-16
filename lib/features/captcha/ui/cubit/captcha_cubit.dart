import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sweet_captcha/features/captcha/data/models/options.dart';

part 'captcha_state.dart';
part 'captcha_cubit.freezed.dart';

class CaptchaCubit extends Cubit<CaptchaState> {
  CaptchaCubit() : super(CaptchaState.initial()) {
    _getCaptchaTarget();
  }

  void _getCaptchaTarget() {
    final randomNumber = Random().nextInt(4);
    final target = Options.values.elementAt(randomNumber);
    emit(
      state.copyWith(
        targetOption: target,
        isVerified: false,
      ),
    );
  }

  void verifyCaptcha(Options option) {
    final isVerified = option == state.targetOption;
    emit(
      state.copyWith(
        isVerified: isVerified,
      ),
    );
  }

  void resetCaptcha() {
    _getCaptchaTarget();
  }
}

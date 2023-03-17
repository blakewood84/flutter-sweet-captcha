import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sweet_captcha/constants/constants.dart';
import 'package:sweet_captcha/extensions/get_random_element.dart';
import 'package:sweet_captcha/features/captcha/data/repositories/captcha_repository.dart';

part 'captcha_state.dart';
part 'captcha_cubit.freezed.dart';

class CaptchaCubit extends Cubit<CaptchaState> {
  CaptchaCubit({
    required this.repository,
  }) : super(CaptchaState.initial()) {
    _getCaptchaTarget();
  }

  final CaptchaRepository repository;

  void _getCaptchaTarget() {
    final captchaOptions = repository.getCaptchaOptions();
    final targetOption = captchaOptions.getRandomElement;

    emit(
      state.copyWith(
        targetOption: targetOption,
        captchaOptions: captchaOptions,
        isVerified: false,
      ),
    );
  }

  void verifyCaptcha(CaptchaObject option) {
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

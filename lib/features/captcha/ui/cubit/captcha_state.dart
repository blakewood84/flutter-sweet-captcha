part of 'captcha_cubit.dart';

@freezed
class CaptchaState with _$CaptchaState {
  const factory CaptchaState({
    String? targetOption,
    Set<String>? captchaOptions,
    required bool isVerified,
  }) = _CaptchaState;

  factory CaptchaState.initial() => const CaptchaState(
        isVerified: false,
      );
}

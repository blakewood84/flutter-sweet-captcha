part of 'captcha_cubit.dart';

@freezed
class CaptchaState with _$CaptchaState {
  const factory CaptchaState({
    CaptchaObject? targetOption,
    Set<CaptchaObject>? captchaOptions,
    int? attempts,
    required bool isVerified,
  }) = _CaptchaState;

  factory CaptchaState.initial() => const CaptchaState(
        isVerified: false,
      );
}

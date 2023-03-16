part of 'captcha_cubit.dart';

@freezed
class CaptchaState with _$CaptchaState {
  const factory CaptchaState({
    Options? targetOption,
    required bool isVerified,
  }) = _CaptchaState;

  factory CaptchaState.initial() => const CaptchaState(
        isVerified: false,
      );
}

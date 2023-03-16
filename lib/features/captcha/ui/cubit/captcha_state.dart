part of 'captcha_cubit.dart';

enum Options {
  one(Colors.redAccent, 1),
  two(Colors.amberAccent, 2),
  three(Colors.purpleAccent, 3),
  four(Colors.greenAccent, 4);

  const Options(
    this.color,
    this.numberValue,
  );

  final Color color;
  final int numberValue;
}

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

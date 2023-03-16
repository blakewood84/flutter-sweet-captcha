import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'captcha_cubit.freezed.dart';
part 'captcha_state.dart';

class CaptchaCubit extends Cubit<CaptchaState> {
  CaptchaCubit() : super(CaptchaState.initial());
}

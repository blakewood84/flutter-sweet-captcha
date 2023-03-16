import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show Colors, Color;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as devtools;

part 'captcha_cubit.freezed.dart';
part 'captcha_state.dart';

class CaptchaCubit extends Cubit<CaptchaState> {
  CaptchaCubit() : super(CaptchaState.initial()) {
    _getCatchaTarget();
  }

  void _getCatchaTarget() {
    final randomNumber = Random().nextInt(4);
    final target = Options.values.elementAt(randomNumber);
    emit(
      state.copyWith(
        targetOption: target,
      ),
    );
  }

  void verifyCaptch(Options option) {
    final isMatch = option == state.targetOption;
    if (isMatch) {
      devtools.log('Match!');
    }
  }
}

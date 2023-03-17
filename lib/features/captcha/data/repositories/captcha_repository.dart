import 'dart:math';

import 'package:sweet_captcha/extensions/get_random_option.dart';
import 'package:sweet_captcha/constants/constants.dart' show CaptchaObject;

class CaptchaRepository {
  Set<CaptchaObject> getCaptchaOptions() {
    final options = <CaptchaObject>{};

    final randomMax = Random().nextInt(3) + 4;

    while (options.length < randomMax) {
      final randomOption = CaptchaObject.values.getRandomOption;
      options.add(randomOption);
    }

    return options;
  }
}

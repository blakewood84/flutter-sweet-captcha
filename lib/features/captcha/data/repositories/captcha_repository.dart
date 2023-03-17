import 'dart:math' as math show Random;
import 'package:sweet_captcha/constants/constants.dart' show captchaObjects;

class CaptchaRepository {
  Set<String> getCaptchaOptions() {
    final options = <String>{};

    while (options.length < 4) {
      final randomNumber = math.Random().nextInt(captchaObjects.length);
      final randomOption = captchaObjects.elementAt(randomNumber);
      options.add(randomOption);
    }

    return options;
  }
}

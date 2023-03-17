import 'dart:math' as math show Random;

extension GetRandomElement<T> on Set<T> {
  int get randomNumber => math.Random().nextInt(length);
  T get getRandomElement => elementAt(randomNumber);
}

import 'dart:math';

extension GetRandomOption<T extends Enum> on Iterable<T> {
  int get randomInt => Random().nextInt(length);
  T get getRandomOption => elementAt(randomInt);
}

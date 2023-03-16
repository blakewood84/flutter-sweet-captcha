import 'package:flutter/material.dart' show Color, Colors;

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

import 'package:flutter/material.dart';
import 'dart:math';

class SineCurve extends Curve {
  final double count;
  SineCurve({this.count = 3});

  @override
  double transformInternal(double t) {
    var val = sin(count * 2 * pi * t) * 0.5 + 0.6;
    return val;
  }
}

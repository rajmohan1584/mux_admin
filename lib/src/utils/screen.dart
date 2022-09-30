import 'package:flutter/material.dart';

class SCREEN {
  static double _width = -1;
  static double _height = -1;

  static init(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
  }

  static double get width => _width;
  static double get height => _height;

  static double get halfWidth => _width/2;
  static double get halfHeight => _height/2;

  static double percentWidth(int pct) {
    return width * pct / 100.0;
  }
  static double percentHeight(int pct) {
    return height * pct / 100.0;
  }
}

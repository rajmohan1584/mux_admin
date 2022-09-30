import 'package:flutter/material.dart';

class TMScreenUtil {
  static double _width = 0;
  static double _height = 0;
  static bool _isLong = false;
  static bool _isMaxWidth = false;
  static bool _isMediumWidth = false;
  static bool _isNarrowWidth = false;
  static bool _isMaxHeight = false;
  static bool _isMediumHeight = false;
  static bool _isSmallHeight = false;

  static double get width => _width;
  static double get height => _height;

  static bool get isLong => _isLong;

  static bool get isMaxWidth => _isMaxWidth;
  static bool get isMediumWidth => _isMediumWidth;
  static bool get isNarrowWidth => _isNarrowWidth;

  static bool get isMaxHeight => _isMaxHeight;
  static bool get isMediumHeight => _isMediumHeight;
  static bool get isSmallHeight => _isSmallHeight;

  static init(BuildContext context) {
    if (_width != null) return;

    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    print('Screen Width: $_width');
    print('Screen height: $_height');

    _isLong = _height > 600;

    _isMaxWidth = _width > 400.0;
    _isMediumWidth = _width > 320.0 && _width <= 400.0;
    _isNarrowWidth = width <= 320.0;

    _isMaxHeight = _height > 675.0;
    _isMediumHeight = _height > 575.0 && _height <= 675.0;
    _isSmallHeight = _height <= 575.0;
  }

  static EdgeInsets cardMargin(BuildContext context) {
    final hzl = _isMaxWidth ? 15.0 : 5.0;
    final vert = _isLong ? 5.0 : 2.0;

    return EdgeInsets.symmetric(horizontal: hzl, vertical: vert);
  }

  static double cardElevation(BuildContext context) {
    if (_isMaxWidth) {
      return 5.0;
    }
    return 3.0;
  }

  static ShapeBorder cardShape(BuildContext context) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    );
  }
}

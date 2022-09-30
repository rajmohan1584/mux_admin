import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class COLORS {
  static get bid => Colors.blue;
  static get ask => Colors.red;

  static get up => Colors.green[200];
  static get down => Colors.red[200];

  static color(String scolor, [bool disabled=false]) {
    if (scolor == "primary") return CupertinoColors.systemBlue;
    if (scolor == "danger") return CupertinoColors.systemRed;

    if (scolor == "secondary") {
      if (disabled) return CupertinoColors.lightBackgroundGray;
      return CupertinoColors.systemGrey;
    }

    return CupertinoColors.systemPink;
  }

  static Map<String, Color> background = {
    'red': Color.fromRGBO(255,224,230,0.7),
    'green': Color.fromRGBO(219,242,242,0.7),
    'orange': Color.fromRGBO(255, 236, 217, 0.7),
    'yellow': Color.fromRGBO(255, 245, 221, 0.7),
    'blue': Color.fromRGBO(215,236,251,0.7),
    'purple': Color.fromRGBO(235,224,255,0.7),
    'gray': Color.fromRGBO(217,219,221,0.7)
  };

  static Map<String, Color> darkBackground = {
    'red': Color(0xffE74C3C),
    'green': Color(0xff27AE60),
    'orange': Color(0xffEB984E),
    'yellow': Color(0xffF1C40F),
    'blue': Color(0xff5DADE2),
    'purple': Color(0xffA569BD),
    'gray': Color(0xff95A5A6)
  };

  static Map<String, Color> border = {
    'red': Color.fromRGBO(255,138,163,1),
    'green': Color.fromRGBO(119,207,207,1),
    'orange': Color.fromRGBO(255, 183, 111, 1),
    'yellow': Color.fromRGBO(255, 205, 86, 1),
    'blue': Color.fromRGBO(54, 162, 235, 1),
    'purple': Color.fromRGBO(179, 140, 255, 1),
    'gray': Color.fromRGBO(177, 181, 186, 1)
  };
}


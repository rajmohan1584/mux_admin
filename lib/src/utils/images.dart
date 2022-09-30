import 'package:flutter/material.dart';

const blotterStates = ["canceled", "complete", "filled", "frozen",
  "halted", "killed", "open-partial", "open", "partial"];

class IMAGES {
  static Image assetImage(String file, {double width=30, double height=30, color}) { 
    return Image.asset('assets/images/$file', width: width, height: height, color:color);
  }

  static final Image bid = assetImage('bid-offering.png');
  static final Image ask = assetImage('ask-offering.png');
  static final Image bidask = assetImage('bidask-offering.png');

  static final Image buy = assetImage('buy.png');
  static final Image sell = assetImage('sell.png');

  static getClientLogo(String name, [bool large = false]) {
    String png = 'GENERIC.png';
    //name = 'Wasmer';
    switch (name) {
      case 'Bank of America': png = 'CLT3129.png'; break;
      case 'BlackRock': png = 'BLACKROCK.png'; break;
      case 'Bracebridge Capital': png = 'CLT2424.png'; break;
      case 'Henderson': png = 'CLT0029.png'; break;
      case 'Fidelity': png = 'CLTFIDL.png'; break;
      case 'Gurtin': png = 'CLTGRTN.png'; break;
      case 'Rockefeller': png = 'CLT2987.png'; break;
      case 'Wasmer': png = 'CLT0028.png'; break;
      case 'Wells Fargo': png = 'CTL3129.png'; break;
      case 'Maindemo': png = 'CLT2438.png'; break;
      default:
    }

    final w = (large) ? 60.0 : 30.0;
    final h = (large) ? 60.0 : 30.0;
    final r = (large) ? 28.0 : 18.0;

    final img = IMAGES.assetImage(png, width:w, height:h);

    return CircleAvatar(
      radius: r,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: r-1,
        backgroundColor: Colors.white,
        child: ClipOval(
          child: img
        )));
  }

  static Image blotterState(String bs) {
    if (bs == "pass") bs = "canceled";

    if (blotterStates.indexOf(bs) >= 0) {
      String png = 'assets/images/blotter-state-$bs.png';

      return Image.asset(png,
        fit: BoxFit.cover,
        width: 15.0,
        height: 15.0,
      );
    }

    String png = 'assets/images/blotter-state-frozen.png';
    return Image.asset(png,
      fit: BoxFit.cover,
      width: 15.0,
      height: 15.0,
    );
  }
}

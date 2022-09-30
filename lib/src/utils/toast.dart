import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mux_admin/src/utils/colors.dart';

class TOAST {
  static success(msg) {
    Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.TOP,
      backgroundColor: COLORS.background['green'],
      textColor: Colors.black,
      timeInSecForIosWeb:3
    );
  }
  static error(msg) {
    Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.TOP,
      backgroundColor: COLORS.background['red'],
      textColor: Colors.black,
      timeInSecForIosWeb:3
    );
  }
}

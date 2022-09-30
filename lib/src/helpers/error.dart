import 'dart:convert';
import 'package:http/http.dart';
import 'package:mux_admin/src/platform/alert.dart';

class Error {
  static bool loginResponseHasError(context, Response response) {
    if (response == null) return true;

    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    if (response.statusCode < 300) {
      return false;
    }

    final String body = response.body;
    print (body.runtimeType);
    if (body is String ) {
      print('body is String');
    } else {
      TMAlert.alert(context, 'Login Error', body);
      return true;
    }

    /*   
    if (body.length == 0) {
      TMAlert.alert(context, 'Login Error', 'No body');
      return true;
    }
    */

    final e500 = body.indexOf("500 - Internal Server Error");
    final e503 = body.indexOf("503 Service Temporarily Unavailable");
    print ("index $e503");
    if (e500 > 0 || e503 > 0) {
      TMAlert.alert(context, 'Login Error', body);
      return true;
    }

    try {
      final j = json. decode(body);
      final error = j['error'];
      if (error != null) {
        final reason = error['reason'];
        if (reason != null) {
          TMAlert.alert(context, 'Login Error', reason);
          return true;
        }
      }
    } on FormatException catch(_){
      print('The provided string is not valid JSON');
    }
    
    TMAlert.alert(context, 'Login Error', body);
    return true;
  }

  static bool loginVerifyAdmin(context, Response response) {
    try {
      final String body = response.body;
      final j = json.decode(body);
      final actor = j['actor'];
      final groupId = actor['groupId'];

      bool admin = false;
      groupId.forEach((g) {
        if (g == 'TM-ADMIN') {
          print('TM-ADMIN');
          admin = true;
        }
      });
      if (admin) return true;
    } catch(err) {
    }

    print ('Not TM-ADMIN');
    TMAlert.alert(context, 'Login Error', 'You are not part of TM-ADMIN');

    return false;
  }
}
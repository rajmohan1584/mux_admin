import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mux_admin/src/platform/alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mux_admin/src/api/api.dart';

class TMAuth {
  static final LocalAuthentication _localAuth = LocalAuthentication();
  
  static autoLogin(BuildContext context, String _host, bool warn, Function handler) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
 
    String host = _host;
    if (host == null) {
      host = prefs.getString('host');
      if (host == null) {
        print ('host not found in Keychain');
        return handler(false);
      }
    }

    String loginId = prefs.getString('loginId');
    if (loginId == null) {
      print ('loginId not found in Keychain');
      return handler(false);
    }

    String password = prefs.getString('password');
    if (password == null) {
      print ('Password not found in Keychain for $loginId');
      return handler(false);
    }

    print ('Password found in Keychain for $loginId');

    print ('Validating the user...');

    bool bioSuccess = false;
    try {
      bool canBio = await _localAuth.canCheckBiometrics;
      print ('canBio=' + canBio.toString());
      if (canBio && Platform.isIOS) {
        List<BiometricType> bioTypes = await _localAuth.getAvailableBiometrics();
        print (bioTypes.toString());
        
        bioSuccess = await _localAuth.authenticateWithBiometrics(
            localizedReason: 'Authenticate for MUX Admin access\n$loginId\n@ $host',
            useErrorDialogs: true,
            stickyAuth: false
        );
      }
      print('bioSuccess=' + bioSuccess.toString());
    } catch (e) {
      print('Error $e');
    }

    if (!bioSuccess) {
      print ('Bio failure. Do manual login');
      return handler(false);
    }

    print ('Bio success. Attempt auto api login');

    int seconds = (warn) ? 5 : 0;
    final title = "Auto Login";
    final content = "Will attempt auto login to $host as $loginId";

    TMAlert.timedAlert(context, seconds, title, content, (action) {
      if (action == "Cancel") {
        return handler(false);
      }

      Api.login(context, host, loginId, password, (success) {
        if (!success) {
          print ('Api login failed');
          return handler(false);
        }
        print ('Api login success. Save Keychain');
        TMAuth.saveKeychain(host, loginId, password);
        print('All done.');

        return handler(true);
      });
    });
  }

  static saveKeychain(String host, String loginId, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('host', host);
    prefs.setString('loginId', loginId);
    prefs.setString('password', password);

    print('Saved h:$host, u:$loginId and p in Keychain.');
  }

  static Future<List<String>> getAuthFromKeyChain() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String host = prefs.getString('host');
    if (host == null) {
      print ('host not found in Keychain');
      return null;
    }

    String loginId = prefs.getString('loginId');
    if (loginId == null) {
      print ('loginId not found in Keychain');
      return null;
    }

    String password = prefs.getString('password');
    if (password == null) {
      print ('Password not found in Keychain for $loginId');
      return null;
    }

    return [host, loginId, password];
  }

  static getBioTypes(BuildContext context, Function handler) async {
    if (Platform.isAndroid) return handler(false, false);
    
    try {
      bool canBio = await _localAuth.canCheckBiometrics;
      print ('canBio=' + canBio.toString());
      if (canBio) {
        List<BiometricType> bioTypes = await _localAuth.getAvailableBiometrics();

        final bool canFaceId = bioTypes.contains(BiometricType.face);
        final bool canTouchId = bioTypes.contains(BiometricType.fingerprint);

        print('canFaceId=$canFaceId, canTouchId=$canTouchId');
        handler(canFaceId, canTouchId);
      } else {
        handler(false, false);
      }
    } catch (e) {
      print('Error $e');
      handler(false, false);
    }
  }

}

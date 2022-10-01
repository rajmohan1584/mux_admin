import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' show Client;
import 'package:mux_admin/src/model/session.dart';
import 'package:mux_admin/src/helpers/error.dart';

//const _root = 'http://192.168.29.175:3000/api/v1';
//const _root = 'https://wsc.ibxdev.com/api/v1';
var _host = 'https://rbccm.ibxdev.com';

var _root = '$_host/api/v1';
var _muxkit = "$_root/muxkit";
var _fimux = "$_root/fimux";
var _logout = false;

class Api {
  static Client client = Client();
  static String cookie = "";
  static String sender = '{"app": "iOS-muxadmin"}';

  static getLogout() {
    return _logout;
  }

  static getHost() {
    return _host;
  }

  static setHost(host) {
    _host = host;
    _root = '$_host/api/v1';
    _muxkit = "$_root/muxkit";
    _fimux = "$_root/fimux";
  }

  ////////////////////////////////////////////////////////////
  //
  static logout(BuildContext context, Function handler) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_root/sessions';
    print(url);

    try {
      _logout = true;
      final response = await client.delete(Uri.parse(url), headers: headers);
      handler(response);
    } catch (e) {
      handler(e);
    }
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<bool> localLogin(BuildContext context) async {
    final body = {
      "loginId": 'rmohan',
      "password": 'mohan99',
      "contractCode": '20150501-001',
      "udid": '1234'
    };

    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'X-Sender': sender
    };

    final url = 'http://192.168.29.175:3000/api/v1/interact/apple/sessions';
    print(url);
    try {
      final response = await client.post(Uri.parse(url),
          body: json.encode(body), headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (Error.loginResponseHasError(context, response)) {
        return false;
      }

      Session.saveLoginResponse(response.body);
      final j = json.decode(response.body);
      final sessionId = j['sessionId'];
      print('sessionId:' + sessionId);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  ////////////////////////////////////////////////////////////
  //
  static login(BuildContext context, String host, String loginId,
      String password, Function handler) async {
    final body = {
      "loginId": loginId,
      "password": password,
//      "contractCode": '20150501-001'
    };

    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'X-Sender': sender
    };

    setHost(host);

    var url = Platform.isIOS
        ? '$_root/interact/apple/sessions'
        : '$_root/interact/android/sessions';

    if (Platform.isIOS) {
      body["udid"] = '1234';
    } else {
      body["deviceId"] = '5678';
    }

    print(url);
    print(body);

    try {
      final response = await client.post(Uri.parse(url),
          body: json.encode(body), headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (Error.loginResponseHasError(context, response)) {
        return handler(false);
      }

      /*
      if (!Error.loginVerifyAdmin(context, response)) {
        return false;
      }
      */

      Session.saveLoginResponse(response.body);
      final j = json.decode(response.body);
      final sessionId = j['sessionId'];
      print('sessionId:' + sessionId);
      cookie = 'TNBT_SESSION=$sessionId';
      print('cookie:' + cookie);
      handler(true);
    } catch (e) {
      print(e);
      handler(false);
    }
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> getConnectionStats() async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_muxkit/connections/stats';
    print(url);

    try {
      final response = await client.get(Uri.parse(url), headers: headers);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> getClients() async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/clients';
    print(url);

    try {
      final response = await client.get(Uri.parse(url), headers: headers);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> getConnections() async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections';
    print(url);

    try {
      final response = await client.get(Uri.parse(url), headers: headers);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> getConnection(String cid) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections/$cid';
    print(url);

    try {
      final response = await client.get(Uri.parse(url), headers: headers);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> stopConnection(String cid) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections/$cid/active';
    print(url);

    try {
      final response =
          await client.put(Uri.parse(url), headers: headers, body: 'false');
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> startConnection(String cid) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections/$cid/active';
    print(url);

    try {
      final response =
          await client.put(Uri.parse(url), headers: headers, body: 'true');
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> pullConnection(String cid, bool pullAll) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections/$cid/requests?suspend=true';
    print(url);
    final command = pullAll ? '"pull-all"' : '"pull"';

    try {
      final response =
          await client.post(Uri.parse(url), headers: headers, body: command);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> sendConnection(String cid) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections/$cid/requests';
    print(url);

    try {
      final response =
          await client.post(Uri.parse(url), headers: headers, body: '"resend"');
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> createConnection(data) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections';
    print(url);

    try {
      final response = await client.post(Uri.parse(url),
          headers: headers, body: json.encode(data));
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> disconnectConnection(String cid) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_fimux/connections/$cid';
    print(url);

    try {
      final response = await client.delete(Uri.parse(url), headers: headers);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> searchOffers(String tcpAddress, String name,
      [dynamic filter = const {}]) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_muxkit/offers/remote?tcpAddress=$tcpAddress';
    print(url);

    try {
      final response = await client.post(Uri.parse(url),
          headers: headers, body: json.encode(filter));
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> getOfferDetail(int requestId) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_muxkit/offers/detail/$requestId';
    print(url);

    try {
      final response = await client.get(Uri.parse(url), headers: headers);
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> searchTrades([dynamic filter = const {}]) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_muxkit/trades';
    print(url);

    try {
      final response = await client.post(Uri.parse(url),
          headers: headers, body: json.encode(filter));
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }

  ////////////////////////////////////////////////////////////
  //
  static Future<dynamic> searchSolicitations(
      [dynamic filter = const {}]) async {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'cookie': cookie,
      'X-Sender': sender
    };

    final url = '$_muxkit/solicitations';
    print(url);

    try {
      final response = await client.post(Uri.parse(url),
          headers: headers, body: json.encode(filter));
      final j = json.decode(response.body);
      return j;
    } catch (e) {
      print(e);
    }
    return {};
  }
}

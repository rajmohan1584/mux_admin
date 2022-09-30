import 'dart:convert';

class Session {
  static String _loginId = "";
  static String _actorId = "";
  static String _displayName = "";
  static String _cookie = "";

  static String get loginId {
    return _loginId;
  }

  static String get actorId {
    return _actorId;
  }

  static String get displayName {
    return _displayName;
  }

  static String get cookie {
    return _cookie;
  }

/*  
  static String get rootUrl {
    return Host.cluster2RootUrl(Session.currentCluster);
  }
*/

  static void saveLoginResponse(String loginResponse) {
    final j = json.decode(loginResponse);
    final actor = j['actor'];
    Session._actorId = actor['actorId'];
    Session._loginId = actor['loginId'];
    Session._displayName = actor['displayName'];

    final sessionId = j['sessionId'];
    Session._cookie = 'TNBT_SESSION=$sessionId';
  }
}

class ERROR {
  static String? text(j) {
    try {
      if (j != null && !(j.length > 0)) {
        final error = j['error'];
        if (error != null) {
          final reason = error['reason'];
          if (reason != null) return reason;
        }
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}

/*
{
  "error":{
      "clusterId":"RJENKINS",
      "reason":"Missing app server IP address",
      "code":"ip-address",
      "uri":"/fimux/connections",
      "method":"POST",
      "no":403
    }
  }
*/

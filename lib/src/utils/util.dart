//
RegExp rxEntityId = RegExp(r'([TROQFS]{1,2}#)0*(\d+)');
RegExp rxDisplayName = RegExp(r'(.*)\/[^/]+$');

const bondTypes = [
  {"abbr": "Corp", "code": "C", "desc": "Corporate"},
  {"abbr": "Muni", "code": "M", "desc": "Municipal"},
  {"abbr": "Treasury", "code": "T", "desc": "Treasury"},
  {"abbr": "Agency", "code": "A", "desc": "Agency"},
  {"abbr": "CD", "code": "S", "desc": "Certificate of Deposit"},
  {"abbr": "CP", "code": "E", "desc": "Commercial Paper"},
  {"abbr": "CMO", "code": "O", "desc": "Collateralized Mortgage Obligation"},
  {"abbr": "MBS", "code": "K", "desc": "Mortage Backed Securities"},
  {"abbr": "Cash", "code": "\$", "desc": "Cash"}
];

class UTIL {
  static String displayEntityId(String rawId) {
    Iterable matches = rxEntityId.allMatches(rawId);
    if (matches.isNotEmpty) {
      var match = matches.elementAt(0);
      if (match != null && match.groupCount == 2) {
        return match.group(1) + " " + match.group(2);
      }
    }
    return rawId;
  }

  static String displayName2SecurityName(String displayName) {
    String securityName = displayName;

    if (securityName != null && securityName.isNotEmpty) {
      Iterable matches = rxDisplayName.allMatches(displayName);
      if (matches.isNotEmpty) {
        var match = matches.elementAt(0);
        if (match != null && match.groupCount == 1) {
          securityName = match.group(1);
        }
      }
    }

    return securityName;
  }

  static String? bondTypeDesc(String bondType) {
    final l = bondTypes.length;

    for (var i = 0; i < l; i++) {
      final bt = bondTypes[i];
      if (bt['code'] == bondType) {
        return bt['abbr'];
      }
    }

    return 'Unknown';
  }
}

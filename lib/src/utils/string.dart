class TMString {
  static String ltrim(String s, int l) {
    if (s != null && s.length > l) return s.substring(0, l);
    return s;
  }

  static toSafeInt(String s, {int dflt = 0}) {
    if (s == null || s.length == 0) return dflt;
    try {
      return int.parse(s);
    } catch (e) {}
    return dflt;
  }
}

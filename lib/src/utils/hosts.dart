class HostItem {
  final String name;
  final String url;
  const HostItem(this.name, this.url);
}

class HOSTS {
  static const List<HostItem> list = [
    HostItem('Demo', "https://www.ibxdev.com"),
    HostItem('Wells', "https://wells.ibxdev.com"),
    HostItem('Raj-Home', "http://192.168.29.175:3000")
  ];

  static String clusterOfHost(String host) {
    for (var h in list) {
      if (host == h.url) return h.name;
    }
    return 'User';
  }

  static bool isUser(String host) {
    return clusterOfHost(host) == 'User';
  }
}

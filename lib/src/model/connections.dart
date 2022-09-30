import 'package:mux_admin/src/utils/format.dart';
import 'package:mux_admin/src/utils/json.dart';

class Connections {
  final List<Connection> _connections = [];

  List<Connection> get connections => _connections;

  reload(j) {
    _connections.removeRange(0, _connections.length);
    for(int i=0; i<j.length; i++) {
      _connections.add(Connection.fromJson(j[i]));
    }
  }

  Connection ofId(id) {
    final l = _connections.length;
    for (int i=0; i<l; i++) {
      if (_connections[i].connectionId == id) return _connections[i];
    }
    return null;
  }

  Connection ofName(name) {
    final l = _connections.length;
    for (int i=0; i<l; i++) {
      if (_connections[i].displayName == name) return _connections[i];
    }
    return null;
  }
}

/*
    "dc": "Rockefeller",
    "connectionId": "CONN000036",
    "tcpAddress": "10.0.1.111",
    "description": "Rockefeller",
    "active": true,
    "clusterId": "CLR0042",
    "dn": "dc=Rockefeller,dc=connections,dc=WellsFargo,dc=DEMO,dc=clients,dc=static,dc=tnbt",
    "marketFilter": "bondType is not null",
    "status": "UP",
    "started": "2020-04-05T20:06:22.041Z",
    "socketNo": 87,
    "peerAddress": "10.0.1.111:5013",
    "stopped": "2020-04-05T20:06:22.041Z",
    "_id": 1,
    "displayName": "Rockefeller"
*/

class Connection{
  String _connectionId;
  String _clusterId;
  String _displayName;
  String _status;
  String _tcpAddress = '--';
  String _uriHostname;
  int _socketNo;
  bool _active;
  DateTime _started;
  DateTime _stopped;

  String get connectionId => _connectionId;
  String get displayConnectionId => _connectionId ?? "Not Connected";
  bool get connected => _connectionId != null;
  String get clusterId => _clusterId ?? '--';
  String get displayName => _displayName ?? 'Unk';
  String get status => _status ?? 'Unk';
  String get tcpAddress => _tcpAddress ?? '';
  String get uriHostname => _uriHostname ?? '';
  int get socketNo => _socketNo ?? 0;
  String get socketNoStr => FMT.qty(_socketNo);
  bool get active => _active ?? false;
  String get activeStr => FMT.yesNo(_active);

  DateTime get started => _started;  
  String get startedStr => FMT.date(_started);
  String get startedTimeStr => FMT.time(_started);
  String get startedDateShortStr => FMT.shortDate(_started);

  DateTime get stopped => _stopped;  
  String get stoppedStr => FMT.date(_stopped);
  String get stoppedTimeStr => FMT.time(_stopped);
  String get stoppedDateShortStr => FMT.shortDate(_stopped);

  static Connection fromJson(j) {
    Connection conn = Connection();
    conn.updateFromJson(j);
    return conn;
  }

  updateFromJson(j) {
    _connectionId = JSON.parseString(j, 'connectionId');
    _displayName = JSON.parseString(j, 'displayName');
    if (_displayName == null) 
      _displayName = JSON.parseString(j, 'dc');
    _clusterId = JSON.parseString(j, 'clusterId');
    _status = JSON.parseString(j, 'status');
    _active = JSON.parseBool(j, 'active');
    _tcpAddress = JSON.parseString(j, 'tcpAddress');
    _uriHostname = JSON.parseString(j, 'uriHostname');
    _socketNo = JSON.parseInt(j, 'socketNo');
    _started= JSON.parseDate(j, 'started');
    _stopped= JSON.parseDate(j, 'stopped');
  }
}

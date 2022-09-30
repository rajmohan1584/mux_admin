import 'package:mux_admin/src/model/connections.dart';
import 'package:mux_admin/src/utils/json.dart';

class Clients {
  final List<Client> _clients = [];

  List<Client> get clients => _clients;
  int get length => _clients.length;

  Client of(int index) {
    if (index >= _clients.length) return null;
    return _clients[index];
  }

  reload(j) {
    _clients.removeRange(0, _clients.length);
    for(int i=0; i<j.length; i++) {
      _clients.add(Client.fromJson(j[i]));
    }
    _clients.sort((a, b) => a.displayName.compareTo(b.displayName));
  }

  mergeConnections(j) {
    Connections conns = Connections();
    conns.reload(j);

    _clients.forEach((cl) {
      cl.connection = conns.ofName(cl.displayName);
    });
  }

  Client ofConnectionId(String connectionId) {
    for (var client in _clients) {
      final conn = client.connection;
      if (conn != null && conn.connectionId == connectionId) {
        return client;
      }
    }

    return null;
  }

  Client ofName(String name) {
    for (var client in _clients) {
      if (client.displayName == name) {
        return client;
      }
    }
    
    return null;
  }
}

/*
    "clientId": "CLT0028",
   "dc": "Wasmer",
    "displayName": "Wasmer",
    "orgType": "Buyside"
*/

class Client{
  String _clientId;
  String _displayName;
  String _orgType;

  Connection _connection;
  bool _hasConnection = false;

  String get clientId => _clientId ?? 'Unk';
  String get displayName => _displayName ?? 'Unk';
  String get orgType => _orgType ?? 'Unk';
  Connection get connection => _connection;
  bool get hasConnection => _hasConnection;
  set connection(c) {
    _connection = c;
    if (c == null) _hasConnection = false;
    else _hasConnection = true;
  }

  static Client fromJson(j) {
    Client client = Client();
    client._clientId = JSON.parseString(j, 'clientId');
    client._displayName = JSON.parseString(j, 'displayName');
    client._orgType = JSON.parseString(j, 'orgType');

    return client;
  }
}



import 'package:mux_admin/src/model/history_chart.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/format.dart';

class MarketStats {
  String _status = "";
  int _offerCount = 0;
  int _requestCount = 0;
  int _securityCount = 0;
  int _tradableAskCount = 0;
  int _tradableBidCount = 0;

  String get status => _status ?? 'Unk';
  int get offerCount => _offerCount;
  int get requestCount => _requestCount;
  int get securityCount => _securityCount;
  int get tradableAskCount => _tradableAskCount;
  int get tradableBidCount => _tradableBidCount;

  String get offerCountStr => FMT.count(_offerCount) ?? 'Unk';
  String get requestCountStr => FMT.count(_requestCount) ?? 'Unk';
  String get securityCountStr => FMT.count(_securityCount) ?? 'Unk';
  String get tradableAskCountStr => FMT.count(_tradableAskCount) ?? 'Unk';
  String get tradableBidCountStr => FMT.count(_tradableBidCount) ?? 'Unk';

  static MarketStats fromJson(j) {
    MarketStats stats = MarketStats();
    stats.updateFromJson(j);
    return stats;
  }

  void updateFromJson(j) {
    if (j == null || j['status'] == null) {
      _status = 'Err';
      return;
    }
    _status = JSON.parseString(j, 'status');
    _offerCount = JSON.parseInt(j, 'offerCount') ?? -1;
    _requestCount = JSON.parseInt(j, 'requestCount') ?? -1;
    _securityCount = JSON.parseInt(j, 'securityCount') ?? -1;
    _tradableAskCount = JSON.parseInt(j, 'tradableAskCount') ?? -1;
    _tradableBidCount = JSON.parseInt(j, 'tradableBidCount') ?? -1;
  }
}

class ConnectionStats {
  String _id = "";
  String _name = "";
  String _status = "";
  int _requests = 0;
  int _sent = 0;
  int _matched = 0;
  int _pulled = 0;
  int _active = 0;
  HistoryChart _history = HistoryChart();

  String get status => _status ?? 'Unk';
  String get name => _name ?? 'Unk';
  String get id => _id ?? 'Unk';
  int get requests => _requests;
  int get sent => _sent;
  int get matched => _matched;
  int get pulled => _pulled;
  int get active => _active;
  HistoryChart get history => _history;

  set status(v) {
    _status = v;
  }

  String get requestsStr => FMT.count(_requests);
  String get sentStr => FMT.count(_sent);
  String get matchedStr => FMT.count(_matched);
  String get pulledStr => FMT.count(_pulled);
  String get activeStr => FMT.count(_active);

  void copyFrom(ConnectionStats nc) {
    _id = nc._id;
    _name = nc._name;
    _status = nc._status;
    _requests = nc._requests;
    _sent = nc._sent;
    _matched = nc._matched;
    _pulled = nc._pulled;
    _active = nc._active;
    _history = nc._history;
  }

  static ConnectionStats fromJson(j) {
    ConnectionStats cstats = ConnectionStats();
    cstats._name = JSON.parseString(j, 'name');
    cstats._id = JSON.parseString(j, 'id');
    cstats._status = JSON.parseString(j, 'status');
    cstats._requests = JSON.parseInt(j, 'requests') ?? -1;
    cstats._sent = JSON.parseInt(j, 'sent') ?? -1;
    cstats._matched = JSON.parseInt(j, 'matched') ?? -1;
    cstats._pulled = JSON.parseInt(j, 'pulled') ?? -1;
    cstats._active = JSON.parseInt(j, 'active') ?? -1;
    cstats._history = HistoryChart.fromJson(j['history']);
    return cstats;
  }
}

class Home {
  MarketStats _marketStats = MarketStats();
  List<ConnectionStats> _connections = [];

  MarketStats get marketStats => _marketStats;
  List<ConnectionStats> get connections => _connections;

  void updateFromJson(j) {
    _marketStats.updateFromJson(j['market']);

    List<ConnectionStats> newConnections = [];
    final jc = j['connections'];
    if (jc != null) {
      final l = jc.length;

      for (var i = 0; i < l; i++) {
        final c = jc[i];
        newConnections.add(ConnectionStats.fromJson(c));
      }
    }
    _mergeConnections(_connections, newConnections);
    _connections.sort((a, b) => a.name.compareTo(b.name));
  }

  void _mergeConnections(oldc, newc) {
    //oldc.forEach((oc) => oc.status = "Err");
    //newc.forEach((nc) => nc.status = "OK");

    newc.forEach((nc) {
      var oc;
      if (oldc.length > 0) {
        var i = 0;
        while (i < oldc.length) {
          oc = oldc[i];
          if (oc.id == nc.id) break;
          i++;
          oc = null;
        }
        //oc = oldc.firstWhere((c) => c != null && c.id == nc.id);
      }
      if (oc != null) {
        oc.copyFrom(nc);
      } else {
        // add
        oldc.add(nc);
        oc = oldc[oldc.length - 1];
      }

      // const history = nc.history || {};

      //mergeHistory(oc, history);
    });
  }

  static Home fromJson(j) {
    Home home = Home();
    home._marketStats = MarketStats.fromJson(j['market']);

    List<ConnectionStats> newConnections = [];
    final jc = j['connections'];
    if (jc != null) {
      final l = jc.length;

      for (var i = 0; i < l; i++) {
        final c = jc[i];
        newConnections.add(ConnectionStats.fromJson(c));
      }
    }
    return home;
  }
}

/*
function mergeHistory(oc, history) {
  oc.history = null;
  if (!history || !history.columns || !history.columns.length) return;
  const columns = history.columns;
  columns.shift();  // time
  oc.history = {columns, values:{}};
 
  if (!history.values || history.values.length <= 1) return;
 
  const values = history.values;
 
  columns.forEach((col, icol) => {
    const data = [];
 
    values.forEach((val) => {
      const v = val[icol+1];
      data.push(v);
    });
 
    oc.history.values[col] = data;
  });
}
 
function diffCopy(oc, nc, field) {
  if (oc[field] && nc[field]) {
    oc.diff[field] = nc[field] - oc[field];
  }
  oc[field] = nc[field];
}
 
function mergeConnections(oldc, newc) {
  oldc.forEach((oc) => {oc.status = "Err";});
  newc.forEach((nc) => {nc.status = "OK";});
 
  newc.forEach((nc) => {
    let oc = oldc.find(c => c.id === nc.id);
    if (oc) {
      // copy
      oc.diff = {};
      oc.status = nc.status;
      diffCopy(oc, nc, "requests");
      diffCopy(oc, nc, "sent");
      diffCopy(oc, nc, "matched");
      diffCopy(oc, nc, "pulled");
      diffCopy(oc, nc, "active");
    }
    else {
      // add
      oldc.push(nc);
      oc = oldc[oldc.length-1];
    }
 
    const history = nc.history || {};
 
    mergeHistory(oc, history);
  });
}
 
function handle_HOME_UPDATE_STATS(state, action) {
  const marketStats = action.payload.market || {};
  marketStats.requestCountDiff = 0;
  marketStats.offerCountDiff = 0;
  marketStats.securityCountDiff = 0;
 
  const oldMarketStats = state.marketStats || null;
  if (oldMarketStats) {
    if (marketStats.requestCount && oldMarketStats.requestCount) {
      marketStats.requestCountDiff = marketStats.requestCount - oldMarketStats.requestCount
    }
    if (marketStats.offerCount && oldMarketStats.offerCount) {
      marketStats.offerCountDiff = marketStats.offerCount - oldMarketStats.offerCount
    }
    if (marketStats.securityCount && oldMarketStats.securityCount) {
      marketStats.securityCountDiff = marketStats.securityCount - oldMarketStats.securityCount
    }
  }
 
  //const old = (oldMarketStats) ? oldMarketStats.offerCount : 'null';
  //console.log("----------------------------------------------");
  //console.log("offers:" + marketStats.offerCount + ", old:" + old + ", diff:" + marketStats.offerCountDiff);
 
  const connectionStats = state.connectionStats ? JSON.parse(JSON.stringify(state.connectionStats)) : [];
 
  const nc = action.payload.connections || [];
  mergeConnections(connectionStats, nc);
  //console.log(JSON.stringify(connectionStats));
 
  return {
    ...state,
    marketStats,
    connectionStats
  };
}
 
function handle_HOME_SET_CONNECTION_HISTORY_COLUMN(state, action) {
  const historyColumn = state.historyColumn ? JSON.parse(JSON.stringify(state.historyColumn)) : [];
  const payload = action.payload;
 
  let found = false;
  historyColumn.forEach((hc) => {
    if (hc.connectionId === payload.connectionId) {
      hc.column = payload.column;
      found = true;
    }
  });
 
  if (!found) {historyColumn.push(payload);};
 
  return {...state, historyColumn};
}
*/

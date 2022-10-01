import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/model/connections.dart';
import 'package:mux_admin/src/platform/alert.dart';
import 'package:mux_admin/src/utils/colors.dart';
import 'package:mux_admin/src/utils/error.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/toast.dart';

Future<void> onStop(String cid, Function pre, Function post) async {
  pre();
  Api.stopConnection(cid).then((j) {
    final err = ERROR.text(j);
    if (err == null) {
      TOAST.success('Connection $cid Stopped.');
      post();
      return;
    }
    TOAST.error('Error Stopping Connection - $err');
  });
}

Future<void> onStart(String cid, Function pre, Function post) async {
  pre();
  Api.startConnection(cid).then((j) {
    final err = ERROR.text(j);
    if (err == null) {
      TOAST.success('Connection $cid Started.');
      post();
      return;
    }
    TOAST.error('Error Starting Connection - $err');
  });
}

Future<void> onPull(
    String cid, bool pullAll, Function pre, Function post) async {
  pre();
  Api.pullConnection(cid, pullAll).then((j) {
    final String command = pullAll ? 'pull-all' : 'pull';

    final err = ERROR.text(j);
    if (err == null) {
      final reprocessed = pullAll ? '' : j['reprocessed'];
      TOAST.success('Pulled ($command) $reprocessed $cid offers.');
      post();
      return;
    }
    TOAST.error('Pull ($command) $cid failure. $err');
  });
}

Future<void> onSend(String cid, Function pre, Function post) async {
  pre();
  Api.sendConnection(cid).then((j) {
    final err = ERROR.text(j);
    if (err == null) {
      final reprocessed = j['reprocessed'];
      TOAST.success('Send $reprocessed $cid offers.');
      post();
      return;
    }
    TOAST.error('Connection $cid Send failure. $err');
  });
}

Future<void> onDisconnect(String cid, Function pre, Function post) async {
  pre();
  Api.disconnectConnection(cid).then((j) {
    final err = ERROR.text(j);
    if (err == null) {
      final cid = j['connectionId'];
      String name = j['description'];
      if (name == null) name = j['dc'];
      TOAST.success('$name Connection $cid Disconnected.');
      post(j);
      return;
    }

    TOAST.error('Error Disconnecting Connection - $err');
  });
}

Future<void> onConnect(data, Function pre, Function post) async {
  pre();
  Api.createConnection(data).then((j) {
    final err = ERROR.text(j);
    if (err == null) {
      final id = j['connectionId'];
      String name = j['description'];
      if (name == null) name = j['dc'];
      TOAST.success('$name connection $id created.');
      post(j);
      return;
    }

    TOAST.error('Error creating connection - $err');
  });
}

class ClientActions {
  static start(String cid, Function pre, Function post) {
    onStart(cid, pre, post);
  }

  static stop(BuildContext context, String cid, String name, Function pre,
      Function post) {
    final title = 'Stop $name';
    final content = 'Do you want to Stop $name - $cid';
    final List<TMConfirmAction> actions = [
      TMConfirmAction("Stop", isDestructive: true)
    ];
    TMAlert.confirmSheet(context, title, content, actions, (action) {
      print(action);
      if (action == "Stop") {
        onStop(cid, pre, post);
      }
    });
  }

  static pull(BuildContext context, String cid, String name, bool active,
      Function pre, Function post) {
    final title = 'Pull Offers $name';
    String content = 'Do you want to Pull offers from $name connection $cid ?';
    final List<TMConfirmAction> actions = [
      TMConfirmAction("Pull", isDestructive: true)
    ];
    if (active) {
      content += "\n\nSelect Pull-All to Pull all Client Offers.";
      actions.add(TMConfirmAction("Pull-All", isDestructive: true));
    }

    TMAlert.confirmSheet(context, title, content, actions, (action) {
      print(action);
      if (action == "Pull") onPull(cid, false, pre, post);
      if (action == "Pull-All") onPull(cid, true, pre, post);
    });
  }

  static send(String cid, Function pre, Function post) {
    onSend(cid, pre, post);
  }

  static disconnect(BuildContext context, String cid, String name, Function pre,
      Function post) {
    final title = 'Disconnect $name connection $cid';
    final content = 'Do you want to Disconnect $name connection $cid ?';
    final List<TMConfirmAction> actions = [
      TMConfirmAction("Disconnect", isDestructive: true)
    ];
    TMAlert.confirmSheet(context, title, content, actions, (action) {
      print(action);
      if (action == "Disconnect") {
        onDisconnect(cid, pre, post);
      }
    });
  }

  static connect(BuildContext context, String clientId, String name,
      Function pre, Function post) {
    final contraAccountXref = name.toUpperCase();
    final marketFilter = 'bondType is not null';
    final title = 'Create new connection';
    final content = 'Connection Name - $name' +
        '\nClient ID - $clientId' +
        '\nAccount Xref - $contraAccountXref' +
        '\nFilter - $marketFilter';

    final List<TMConfirmAction> actions = [TMConfirmAction("Connect")];
    TMAlert.confirmSheet(context, title, content, actions, (action) {
      print(action);
      if (action == "Connect") {
        final data = {
          'name': name,
          'clientId': clientId,
          'contraAccountXref': contraAccountXref,
          'marketFilter': marketFilter
        };
        onConnect(data, pre, post);
      }
    });
  }

  static ActionPane slideActions(BuildContext context, Client client,
      Connection? conn, Function preAction, Function postAction) {
    final actions = <Widget>[];

    if (conn != null && conn.connected) {
      final name = conn.displayName;
      final cid = conn.connectionId;

      actions.add(SlidableAction(
          backgroundColor: COLORS.darkBackground['red']!,
          foregroundColor: Colors.white,
          onPressed: (context) =>
              disconnect(context, cid, name, preAction, postAction),
          //icon: IMAGES.assetImage("disconnect.png",width:40, height:40),
          label: "Disconnect"));
      if (conn.active) {
        actions.add(SlidableAction(
            backgroundColor: COLORS.darkBackground['orange']!,
            onPressed: (context) =>
                stop(context, cid, name, preAction, postAction),
            //icon:IMAGES.assetImage("stop_connection.png",width:40, height:40),
            label: "Stop"));
      } else {
        actions.add(SlidableAction(
            backgroundColor: COLORS.darkBackground['blue']!,
            onPressed: (context) => onStart(cid, preAction, postAction),
            //icon:IMAGES.assetImage("start_connection.png", width: 40, height: 40),
            label: "Start"));
      }
    } else {
      final clientId = client.clientId;
      final name = client.displayName;
      actions.add(SlidableAction(
          backgroundColor: COLORS.darkBackground['blue']!,
          onPressed: (context) =>
              connect(context, clientId, name, preAction, postAction),
          //icon: IMAGES.assetImage("connect.png", width:40, height:40),
          label: "Connect"));
    }

    return ActionPane(
        dragDismissible: false,
        motion: const DrawerMotion(),
        children: actions);
  }

  static ActionPane secondarySlideActions(BuildContext context,
      Connection? conn, Function preAction, Function postAction) {
    final actions = <Widget>[];
    if (conn == null || !conn.connected) {
      actions.add(SlidableAction(
          backgroundColor: COLORS.darkBackground['gray']!,
          onPressed: (context) => print('NooP'),
          //icon:IMAGES.assetImage("not_connected.png",width:40, height:40),
          label: "N/A"));
    } else {
      final name = conn.displayName;
      final cid = conn.connectionId;
      final active = conn.active;

      actions.add(SlidableAction(
          backgroundColor: COLORS.darkBackground['yellow']!,
          onPressed: (context) =>
              pull(context, cid, name, active, preAction, postAction),
          //icon: IMAGES.assetImage("pull_connection.png",width:40, height:40),
          label: "Pull"));
      if (active) {
        actions.add(SlidableAction(
            backgroundColor: COLORS.darkBackground['blue']!,
            onPressed: (context) => send(cid, preAction, postAction),
            //icon: IMAGES.assetImage("send_connection.png",width:40, height:40),
            label: "Send"));
      }
    }
    return ActionPane(
        dragDismissible: false,
        motion: const DrawerMotion(),
        children: actions);
  }
}

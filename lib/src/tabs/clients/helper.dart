import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/model/connections.dart';
import 'package:mux_admin/src/tabs/clients/actions.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/widgets.dart';

class ClientsHelper {
  static Widget buildStatsTitle(BuildContext context) {
    return Text('Title');
  }

  static Widget buildClientSlider(BuildContext context, Client client,
      Function setLoading, Function onReloadData) {
    /*
    final actions = ClientActions.slideActions(context, client, client.connection, setLoading, onReloadData);
    final secondaryActions = ClientActions.secondarySlideActions(context, client.connection, setLoading, onReloadData);
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        child: buildClientCard(context, client),
      ),
      actions: actions,
      secondaryActions: secondaryActions,
    );
    */
  }

  static Widget buildClientCard(BuildContext context, Client client,
      [EdgeInsets margin]) {
    Widget clientRow = buildClientRow(context, client);
    Widget connRow = buildConnectionRow(context, client.connection);

    return Card(
        margin: margin != null ? margin : EdgeInsets.fromLTRB(15, 10, 15, 10),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [clientRow, WIDGETS.hl(), connRow]),
        ));
  }

  static buildClientRow(BuildContext context, Client client) {
    final left = Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IMAGES.getClientLogo(client.displayName),
//          ClientIcon(client.clientId),
            SizedBox(width: 5),
            Text(client.displayName),
          ],
        ));

    final right = Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              WIDGETS.nameValue('client-id', client.clientId),
              WIDGETS.nameValue('  ', '  '),
              WIDGETS.nameValue('org-type', client.orgType)
            ]));

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [left, right]);
  }

  static Widget buildConnectionRow(BuildContext context, Connection conn) {
    var connectionId = conn != null ? conn.connectionId : 'Not Connected';
    final status = conn != null ? conn.status : '--';

    Widget mainRow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          WIDGETS.nameValue('connection-id', connectionId),
          WIDGETS.nameWidget('status', WIDGETS.connStatus(context, status)),
        ]);

    final rows = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: mainRow,
      )
    ];

    final row = Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: rows));

    return row;
  }
}

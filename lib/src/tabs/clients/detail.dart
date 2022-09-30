import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/model/connections.dart';
import 'package:mux_admin/src/platform/activity.dart';
import 'package:mux_admin/src/platform/button.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/clients/actions.dart';
import 'package:mux_admin/src/utils/colors.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/screen.dart';
import 'package:mux_admin/src/utils/widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class ClientDetailTab extends StatefulWidget {
  final Client _client;
  final String _id;
  const ClientDetailTab(this._client, this._id);

  @override
  _ClientDetailTabState createState() => _ClientDetailTabState();
}

class _ClientDetailTabState extends State<ClientDetailTab> {
  bool loading = true;
  Connection conn = Connection();

  @override
  void initState() {
    onReloadData(widget._id);
    super.initState();
  }

  Future<void> onReloadData([String? id]) async {
    final connectionId = conn.connected ? conn.connectionId : id;
    if (connectionId == null) {
      setState(() => loading = false);
      return;
    }

    setState(() => loading = true);
    Api.getConnection(connectionId).then((j) {
      setState(() {
        if (j != null) conn.updateFromJson(j);
        loading = false;
      });
    });
  }

  onDisconnect(j) {
    setState(() {
      conn = Connection();
      loading = false;
    });
  }

  onConnect(j) {
    setState(() {
      if (j != null) conn.updateFromJson(j);
      onReloadData();
    });
  }

  setLoading() {
    setState(() => loading = true);
  }

  Widget _buildBody() {
    final children = <Widget>[];

    final name = widget._client.displayName;

    Widget xImg = IMAGES.getClientLogo(name, true);
    children.add(xImg);

    Widget xName = WIDGETS.detailPageTitle(name);
    children.add(xName);

//    children.add(WIDGETS.hl());

    final top = Column(children: children);
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          top: 100,
          width: SCREEN.width,
          child: Center(
            child: top,
          ),
        ),
        Positioned(top: 200, width: SCREEN.width, child: details(context)),
        Positioned(
          bottom: 100,
          width: SCREEN.width,
          child: Center(
            child: actions(context),
          ),
        )
      ],
    );
  }

  Widget connectRoww(context) {
    if (conn.connectionId != null) {
      return TMButton(context, "Disconnect", "danger", () => disconnect());
    }
    return TMButton(context, "Connect", "primary", () => connect());
  }

  Widget connectRow(context) {
    if (conn.connectionId != null) {
      return TMIconButton(context, "disconnect.png", "Disconnect",
          COLORS.darkBackground['red']!, () => disconnect());
    }
    return TMIconButton(context, "connect.png", "Connect",
        COLORS.darkBackground['blue']!, () => connect());
  }

  connect() {
    Client client = widget._client;
    ClientActions.connect(
        context, client.clientId, client.displayName, setLoading, onConnect);
  }

  disconnect() {
    if (conn == null || !conn.connected) return;
    ClientActions.disconnect(
        context, conn.connectionId, conn.displayName, setLoading, onDisconnect);
  }

  stop(context) {
    if (conn == null || !conn.connected) return;
    ClientActions.stop(
        context, conn.connectionId, conn.displayName, setLoading, onReloadData);
  }

  start() {
    if (conn == null || !conn.connected) return;
    ClientActions.start(conn.connectionId, setLoading, onReloadData);
  }

  pull(context) {
    if (conn == null || !conn.connected) return;
    ClientActions.pull(context, conn.connectionId, conn.displayName,
        conn.active, setLoading, onReloadData);
  }

  send() {
    if (conn == null || !conn.connected || !conn.active) return;
    ClientActions.send(conn.connectionId, setLoading, onReloadData);
  }

  Widget actionRow(context) {
    bool connected = conn.connected;
    bool active = conn.active;

    final red = COLORS.darkBackground['red']!;
    final blue = COLORS.darkBackground['blue']!;

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          conn.active
              ? TMIconButton(
                  context,
                  "stop_connection.png",
                  "Stop",
                  red,
                  () => stop(context),
                  disabled: !connected,
                )
              : TMIconButton(
                  context, "start_connection.png", "Start", blue, () => start(),
                  disabled: !connected),
          TMIconButton(
              context, "pull_connection.png", "Pull", red, () => pull(context),
              disabled: !connected),
          TMIconButton(
              context, "send_connection.png", "Send", blue, () => send(),
              disabled: !connected || !active)
        ]);

    /*
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        conn.active ? 
          TMButton(context, "Stop", "danger", ()=>stop(context), disabled: !connected,) :
          TMButton(context, "Start", "primary", ()=>start(), disabled: !connected),
        TMButton(context, "Pull", "danger", ()=>pull(context), disabled: !connected),
        TMButton(context, "Send", "primary", ()=>send(), disabled: !connected || !active)
      ]
    );
    */
  }

  Widget actions(context) {
    final children = <Widget>[];

//    children.add(WIDGETS.hl());
    children.add(SizedBox(height: 20));
    children.add(connectRow(context));
    children.add(SizedBox(height: 20));
    children.add(actionRow(context));

    return Column(children: children);
  }

  Widget detailRow(BuildContext context, String name, Widget valueWidget) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Text(name),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: valueWidget,
            )
          ]),
    );
  }

  Widget details(context) {
    String startedStopped = 'Started';
    String time = conn.startedTimeStr;
    String date = conn.startedDateShortStr;
    if (!conn.active) {
      startedStopped = 'Stopped';
      time = conn.stoppedTimeStr;
      date = conn.startedDateShortStr;
    }
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          detailRow(
              context, 'Status', WIDGETS.connStatus(context, conn.status)),
          detailRow(context, 'Active', Text(conn.activeStr)),
          detailRow(context, 'Connection ID', Text(conn.displayConnectionId)),
          detailRow(context, '', Text(time)),
          detailRow(context, startedStopped, Text(date)),
          detailRow(context, 'IP Address', Text(conn.tcpAddress)),
          detailRow(context, 'Host', Text(conn.uriHostname)),
          detailRow(context, 'Cluster ID', Text(conn.clusterId)),
        ],
      ),
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    Widget trailing = loading
        ? TMActivityIndicator()
        : CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(CupertinoIcons.refresh),
            onPressed: () {
              onReloadData();
            });

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget._client.displayName),
        previousPageTitle: 'Clients',
        trailing: trailing,
      ),
      child: _buildBody(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}

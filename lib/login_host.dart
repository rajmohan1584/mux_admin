import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:mux_admin/src/platform/widget.dart' as local;
import 'package:mux_admin/src/utils/hosts.dart';
import 'package:mux_admin/src/utils/widgets.dart';

final key = new GlobalKey<HostListWidgetState>();

class LoginHostSelector extends StatelessWidget {
  final String _host;
  LoginHostSelector(this._host);

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 100, 20, 5),
      child: HostListWidget(key, _host),
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, key.currentState.getHost());
        return true;
      },
      child: new Scaffold(
        appBar: AppBar(title: Text('Select Cluster')),
        body: _buildBody(context),
      ),
    );

    /*
    return Scaffold(
      appBar: AppBar(title: Text('Select Cluster')),
      body: _buildBody(context),
    );
    */
  }

  Widget _buildIos(BuildContext context) {
    Widget back = CupertinoNavigationBarBackButton(
      onPressed: () {
        Navigator.pop(context, key.currentState.getHost());
      },
      previousPageTitle: 'Login',
    );
    return CupertinoPageScaffold(
      
      navigationBar: CupertinoNavigationBar(
        middle: Text('Select Cluster'),
        leading: back,
        //previousPageTitle: 'Login',
      ),
      child: _buildBody(context),
    );
  }

  @override
  Widget build(context) {
    return local.PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}

class HostListWidget extends StatefulWidget {
  final String _host;

  HostListWidget(key, this._host) : super(key:key);
  @override
  HostListWidgetState createState() => HostListWidgetState();
}


class HostListWidgetState extends State<HostListWidget> {
  String host;
  final hostCtlr = TextEditingController();
  String getHost() {
    if (host == '<user>') return hostCtlr.text;
    return host;
  }

  // Group Value for Radio Button.

  @override
  void initState() {
    host = widget._host;
    if (HOSTS.isUser(host)) {
      hostCtlr.text = host;
      host = '<user>';
    } else {
      hostCtlr.text = 'http://';
    }
    super.initState();
  }

  @override
  void dispose() {
    hostCtlr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final children = <TableRow>[];

    HOSTS.list.forEach((item) {
      children.add(buildClusterRow(context, item));
    });

    children.add(buildUserRow());

    /* Android
    children.add(
      RaisedButton(
        onPressed: () {
          Navigator.pop(context, host);
        },
        child: Text('Go back!'),
      ));
    */

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 8, 10),
      child: Column(
        children: <Widget>[
          WIDGETS.avatar("cloud.png", true),
          Table(
            //border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FlexColumnWidth(1.0),
              1: IntrinsicColumnWidth(),
              2: FlexColumnWidth(1.0),
            },
            children: children
          ),
        ],
      ),
    );
  }

  TableRow buildClusterRow(BuildContext context, item) {
    return TableRow(
      children:[
        Container(height:75, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('${item.name}')])),
        Text('${item.url}'),
        PlatformSwitch(
          onChanged: (bool value) {
            setState(() {
              host = item.url ;
            });
          },
          value: item.url==host,
        )
      ]);
  }

  TableRow buildUserRow() {
    return TableRow(
      children:[
        Container(height:75, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('User')])),
        SizedBox(
          width: 200,
          height: 50,
          child: TextField(
            controller: hostCtlr,
            autocorrect: false,
            obscureText: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
        ))),
        PlatformSwitch(
          onChanged: (bool value) {
            setState(() {host = '<user>' ;});
          },
          value: host=='<user>',
        )
      ]);
  }
}

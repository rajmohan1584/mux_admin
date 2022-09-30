import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/model/connections.dart';
import 'package:mux_admin/src/platform/activity.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/clients/helper.dart';
import 'package:mux_admin/src/tabs/clients/detail.dart';

class ClientsTab extends StatefulWidget {
  static const title = 'Connections';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Image(image:AssetImage("assets/images/clients.png"));//Icon(CupertinoIcons.music_note);
  static const iosIconActive = Image(image:AssetImage("assets/images/clients-filled.png"), color: Colors.blue,);//Icon(CupertinoIcons.music_note);

  const ClientsTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _ClientsTabState createState() => _ClientsTabState();
}

class _ClientsTabState extends State<ClientsTab> {
  final Clients clients = Clients();
  bool loading = true;

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    setState(() {
      //clients.reload(CLIENTS);
      //clients.mergeConnections(CONNECTIONS);
    });
    onReloadData();
    super.initState();
  }

  setLoading() {
    setState(() => loading = true);
  }

  Future<void> onReloadData([dynamic j]) async {
    setState(() => loading = true);
    Api.getClients().then((jClients) {
      Api.getConnections().then((jConnections) {
        setState(() {
          clients.reload(jClients);
          clients.mergeConnections(jConnections);
          loading = false;
        });
      });
    });
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= clients.length) return null;
    Client client = clients.of(index);
    
    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
          onTap: () {
            Connection conn = client.connection;
            String id = conn==null ? null : conn.connectionId;
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => ClientDetailTab(client, id)
              )
            ).then((value) => onReloadData());
          },
          child: ClientsHelper.buildClientSlider(context, client, setLoading, onReloadData) //_buildCard(context)
        )
      );
  }

  // ===========================================================================
  // Non-shared code below because:
  // - Android and iOS have different scaffolds
  // - There are differenc items in the app bar / nav bar
  // - Android has a hamburger drawer, iOS has bottom tabs
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================
  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ClientsTab.title),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async => await _androidRefreshKey.currentState.show(),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
               //TMAlert.alert(context, 'title', 'message');
            },
          ),
        ],
      ),
      drawer: widget.androidDrawer,
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: onReloadData,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 12),
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    Widget trailing = loading ?
      TMActivityIndicator() :
      CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.refresh),
          onPressed: () {
              onReloadData();
          }
      );

    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          trailing: trailing,
        ),
        CupertinoSliverRefreshControl(
          onRefresh: onReloadData,
        ),
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 12),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_listBuilder),
            ),
          ),
        ),
      ],
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

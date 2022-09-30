import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mux_admin/src/model/home.dart';
import 'package:mux_admin/src/platform/alert.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/home/helper.dart';
import 'package:mux_admin/src/tabs/home/tile.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/tabs/home/detail.dart';
import 'package:mux_admin/src/utils/images.dart';

final iconCLT2987 = Image.asset('assets/images/CLT2987.jpg', scale: 2);

class HomeTab extends StatefulWidget {
  static const title = 'Home';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Image(image:AssetImage("assets/images/home.png"));//Icon(CupertinoIcons.music_note);
  static const iosIconActive = Image(image:AssetImage("assets/images/home-filled.png"), color: Colors.blue,);//Icon(CupertinoIcons.music_note);

  const HomeTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
//  static const _itemsLength = 3;

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();
  Home _home = Home();
  bool loading = true;

  @override
  void initState() {
    setState(() {
     // _home.updateFromJson(oHOME);
//      _home = Home.fromJson(oHOME);
    });
    onReloadData();
    super.initState();
  }

  Future<void> onReloadData() async {
    setState(() => loading = true);
    Api.getConnectionStats().then((j) {
      setState(() {
        _home.updateFromJson(j);
        loading = false;
      });
    });
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index > _home.connections.length) return null;

    return GestureDetector(
      onTap: () {
        if (index == 0) return; // TODO market chart
        //final List<Object> connections = oHOME['connections'];
        //final HomeDetailTab hdt = HomeDetailTab.fromJson(connections[0]);
        final connections = _home.connections;
        final connStats = connections[index-1];
        HomeDetailTab hdt = HomeDetailTab(connStats);
        
        Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (context) => hdt
          )
        );
      },
      child: SafeArea(
        top: false,
        bottom: false,
        child: _buildCard(context, index)
      ),
    );
  }

  Widget _buildCard(BuildContext context, int index) {
    if (index == 0) return buildMarketStatsCard(context);

    final connections = _home.connections;
    final connStats = connections[index-1];

    return buildConnectionStatsCard(context, connStats);
  }

  Widget buildMarketStatsCard(BuildContext context) {
    final marketStats = _home.marketStats;
    return HomeTile(Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ListTile(
            leading: IMAGES.getClientLogo("Market"),//(Icons.album),
            title: Text('Market'),
            //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          HomeHelper.buildStatsRow(context, 'Status', marketStats.status),
          HomeHelper.buildStatsRow(context, 'Offers', marketStats.offerCountStr),
          HomeHelper.buildStatsRow(context, 'Requests', marketStats.requestCountStr),
          HomeHelper.buildStatsRow(context, 'Securities', marketStats.securityCountStr),
          HomeHelper.buildStatsRow(context, 'Tradable Ask', marketStats.tradableAskCountStr),
          HomeHelper.buildStatsRow(context, 'Tradable Bid', marketStats.tradableBidCountStr),
        ],
      ),
    );
  }

  Widget buildConnectionStatsCard(BuildContext context, ConnectionStats connStats) {
    return HomeTile(Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ListTile(
            leading: IMAGES.getClientLogo(connStats.name),// Icon(Icons.album),
            title: Text(connStats.name),
            //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          HomeHelper.buildStatsRow(context, 'Status', connStats.status),
          HomeHelper.buildStatsRow(context, 'Active', connStats.activeStr),
          HomeHelper.buildStatsRow(context, 'Requests', connStats.requestsStr),
          HomeHelper.buildStatsRow(context, 'Pulled', connStats.pulledStr),
          HomeHelper.buildStatsRow(context, 'Sent', connStats.sentStr),
          HomeHelper.buildStatsRow(context, 'Matched', connStats.matchedStr),
        ],
      ),
    );
  }

  void _setData() {
  }

  Widget buildLayout(context) {
    return StaggeredGridView.count(
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      crossAxisCount: 2,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      children: <Widget>[
        HomeTile(Text("TODO")),
        HomeTile(Text("TODO")),
        HomeTile(Text("TODO")),
        HomeTile(Text("TODO")),
        HomeTile(Text("TODO")),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 200.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(1, 150.0),
        StaggeredTile.extent(2, 150.0),
        StaggeredTile.extent(2, 150.0),
      ],
    );
  }

  Future<void> _refreshData() {
    return Future.delayed(
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 2),
      () => setState(() => _setData()),
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
        title: Text(HomeTab.title),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async => await _androidRefreshKey.currentState.show(),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              TMAlert.alert(context, 'title', 'message');
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
    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(CupertinoIcons.refresh),
            onPressed: () {
              onReloadData();
              //TMAlert.alert(context, 'title', 'message');
            },
          ),
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

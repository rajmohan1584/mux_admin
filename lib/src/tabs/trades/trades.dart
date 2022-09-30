import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/trades.dart';
import 'package:mux_admin/src/platform/activity.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/trades/detail.dart';
import 'package:mux_admin/src/tabs/trades/helper.dart';

class TradesTab extends StatefulWidget {
  static const title = 'Trades';
  static const androidIcon = Icon(Icons.music_note);

  const TradesTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _TradesTabState createState() => _TradesTabState();
}

class _TradesTabState extends State<TradesTab> {
  final List<Trade> trades = List();
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();
  bool loading = true;
  
  @override
  void initState() {
    setState(() {
    });
    onReloadData();
    super.initState();
  }

  Future<void> onReloadData() async {
    setState(() => loading = true);
    Api.searchTrades().then((j) {
      setState(() {
        trades.removeRange(0, trades.length);
        for(int i=0; i<j.length; i++) {
          trades.add(Trade.fromJson(j[i]));
        }
        loading = false;
      });
    });
  }


  Widget _listBuilder(BuildContext context, int index) {
    if (index >= trades.length) return null;
    Trade trade = trades[index];

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => TradeDetailTab(trade)
              )
            );
          },
          child: TradeHelper.buildTrade(context, trade) //_buildCard(context)
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
        title: Text(TradesTab.title),
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

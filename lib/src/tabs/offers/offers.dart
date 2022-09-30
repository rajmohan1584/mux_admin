import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/offers.dart';
import 'package:mux_admin/src/platform/activity.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/offers/helper.dart';
import 'package:mux_admin/src/tabs/offers/detail.dart';

class OffersTab extends StatefulWidget {
  static const title = 'Offers';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Image(
      image: AssetImage(
          "assets/images/offers.png")); //Icon(CupertinoIcons.music_note);
  static const iosIconActive = Image(
    image: AssetImage("assets/images/offers-filled.png"),
    color: Colors.blue,
  ); //Icon(CupertinoIcons.music_note);

  const OffersTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _OffersTabState createState() => _OffersTabState();
}

class _OffersTabState extends State<OffersTab> {
  final List<Object> offers = List<Object>();
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();
  bool loading = true;

  @override
  void initState() {
    setState(() {
      //offers.removeRange(0, offers.length);
      //offers.addAll(OFFERS["results"]);
    });
    onReloadData();
    super.initState();
  }

  Future<void> onReloadData() async {
    setState(() => loading = true);
    Api.searchOffers('local', 'local').then((j) {
      setState(() {
        offers.removeRange(0, offers.length);
        offers.addAll(j["results"]);
        loading = false;
      });
    });
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= offers.length) return null;
    Offer offer = Offer.fromJson(offers[index]);

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push<void>(MaterialPageRoute(
                  builder: (context) => OfferDetailTab(offer)));
            },
            child: OfferHelper.buildOffer(context, offer) //_buildCard(context)
            ));
  }

  /*
  Widget buildOffers(BuildContext context) {
    final clients = _clients.clients;
    if (clients.length <= 0) {
      return Text('loading....');
    }
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, int index) {
          Client client = clients[index];
          return buildOffer(context, client);
        },
      ),
      onRefresh: _onReloadData,
    );
  }
  */

  void _setData() {}

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
        title: Text(OffersTab.title),
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
    Widget trailing = loading
        ? TMActivityIndicator()
        : CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(CupertinoIcons.refresh),
            onPressed: () {
              onReloadData();
            });

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

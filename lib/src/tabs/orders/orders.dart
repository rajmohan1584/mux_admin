import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/data/orders.dart';
import 'package:mux_admin/src/model/orders.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/widgets.dart';
import 'package:mux_admin/src/tabs/orders/detail.dart';

class OrdersTab extends StatefulWidget {
  static const title = 'Orders';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Image(
      image: AssetImage(
          "assets/images/orders.png")); //Icon(CupertinoIcons.music_note);
  static const iosIconActive = Image(
    image: AssetImage("assets/images/orders-filled.png"),
    color: Colors.blue,
  ); //Icon(CupertinoIcons.music_note);

  const OrdersTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _OrdersTabState createState() => _OrdersTabState();
}

class _OrdersTabState extends State<OrdersTab> {
  final List<Object> orders = [];
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    setState(() {
      orders.removeRange(0, orders.length);
      orders.addAll(oRDERS);
    });
    super.initState();
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= orders.length) return null;

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push<void>(
                  MaterialPageRoute(builder: (context) => OrderDetailTab()));
            },
            child: buildOrder(context, index) //_buildCard(context)
            ));
  }

  /*
  Widget buildOrders(BuildContext context) {
    final clients = _clients.clients;
    if (clients.length <= 0) {
      return Text('loading....');
    }
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, int index) {
          Client client = clients[index];
          return buildOrder(context, client);
        },
      ),
      onRefresh: _onReloadData,
    );
  }
  */

  Widget mainRow(BuildContext context, Order order) {
    final icon = (order.side == 'buy')
        ? WIDGETS.nameImage('buy', IMAGES.buy)
        : WIDGETS.nameImage('sell', IMAGES.sell);

    Widget left = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icon,
/*        Image.asset(
          'assets/images/' + order.side + '.png',
          fit: BoxFit.cover,
        ),
*/
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(order.dispOrderId,
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ]);

    Widget right = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Text(order.tif),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Text(order.blotterStatus,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Image.asset(
            'assets/images/blotter-state-' + order.blotterStatus + '.png',
            fit: BoxFit.cover,
            width: 15.0,
            height: 15.0,
          )
        ]);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[left, right]);
  }

  Widget secondRow(BuildContext context, Order order) {
    Widget mid = Padding(
        padding: const EdgeInsets.only(left: 35.0), child: Text(order.side));
    return mid;
  }

  Widget detailRow(BuildContext context, Order order) {
    Widget dt =
        WIDGETS.dateTime(order.updatedDateShortStr, order.updatedTimeStr);
    Widget minQty = WIDGETS.nameValue("min", order.minQtyStr);
    Widget openQty = WIDGETS.nameValue("open", order.openQtyStr);
    Widget filledQty = WIDGETS.nameValue("filled", order.filledQtyStr);
    Widget price = WIDGETS.nameValue("price", order.priceStr);
    Widget eeld = WIDGETS.nameValue("yield", order.yieldStr);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[dt, minQty, openQty, filledQty, price, eeld]);
  }

  buildOrder(BuildContext context, int index) {
    Order order = Order.fromJson(orders[index]);

    final children = <Widget>[
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              mainRow(context, order),
              WIDGETS.security(order.security),
              WIDGETS.hl(),
              detailRow(context, order),
            ],
          )),
      //buildBottomRow(context, name, status)
    ];

    return Card(
        margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
        elevation: 5,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children));
  }

  buildOrderInfo(BuildContext context, Order order) {
    return Text(order.side);
  }

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
        title: Text(OrdersTab.title),
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
        onRefresh: _refreshData,
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
            child: Icon(CupertinoIcons.search),
            onPressed: () {
              //TMAlert.alert(context, 'title', 'message');
            },
          ),
        ),
        CupertinoSliverRefreshControl(
          onRefresh: _refreshData,
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

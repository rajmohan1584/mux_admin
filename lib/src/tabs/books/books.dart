import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/data/books.dart';
import 'package:mux_admin/src/model/books.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/screen.dart';
import 'package:mux_admin/src/utils/widgets.dart';
import 'package:mux_admin/src/tabs/books/detail.dart';

import 'detail.dart';

class BooksTab extends StatefulWidget {
  static const title = 'Books';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Image(image:AssetImage("assets/images/books.png"));
  static const iosIconActive = Image(image:AssetImage("assets/images/books-filled.png"), color: Colors.blue,);

  const BooksTab({Key key, this.androidDrawer}) : super(key: key);

  final Widget androidDrawer;

  @override
  _BooksTabState createState() => _BooksTabState();
}

class _BooksTabState extends State<BooksTab> {
  final Books _books = Books();
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
      setState(() {
        _books.reload(oBOOKS);
      });
    super.initState();
  }


  Widget _listBuilder(BuildContext context, int index) {
    if (index >= _books.length) return null;
    
    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => BookDetailTab()
              )
            );
          },
          child: buildBook(context, index) //_buildCard(context)
        )
      );
  }

  buildBook(BuildContext context, int index) {
    final book = _books.books[index];
    final children = <Widget>[
      buildBidSide(context, book.bidBook),
      buildAskSide(context, book.askBook)
    ];

    return Card(
        margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: children,
          )
      ),
    );
  }

  Widget sideContainer(BuildContext context, List<Widget> children) {
    return Container(
      width: SCREEN.halfWidth-10.0,
//      height: 200,
      child: Card(
        margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children
          ),
        )
      )
    );
  }

  Widget buildBidSide(BuildContext context, BookSide bid) {
    final infoData = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WIDGETS.nameImage('bid', IMAGES.bid),
        SizedBox(height: 10),
        WIDGETS.dateTime(bid.createdDateShortStr, bid.createdTimeStr)
      ]
    );

    final qtyData = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WIDGETS.bid('qty', bid.quantityStr),
        SizedBox(height: 10),
        WIDGETS.bid('min', bid.minQuantityStr),
        SizedBox(height: 10),
        WIDGETS.bid('rating', bid.ratingStr),
        SizedBox(height: 10),
        WIDGETS.bid('tradable', bid.tradableStr),
      ]
    );

    final priceData = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WIDGETS.bid('source', bid.contra),
        SizedBox(height: 10),
        WIDGETS.bid('price', bid.priceStr),
        SizedBox(height: 10),
        WIDGETS.bid('yield', bid.yieldStr),
        SizedBox(height: 10),
        WIDGETS.bid('spread', bid.spreadStr),
      ]
    );

    return sideContainer(context, [infoData, qtyData, priceData]);
  }

  Widget buildAskSide(BuildContext context, BookSide ask) {
    final infoData = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WIDGETS.nameImage('ask', IMAGES.ask),
        SizedBox(height: 10),
        WIDGETS.dateTime(ask.createdDateShortStr, ask.createdTimeStr)
      ]
    );

    final qtyData = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        WIDGETS.ask('qty', ask.quantityStr),
        SizedBox(height: 10),
        WIDGETS.ask('min', ask.minQuantityStr),
        SizedBox(height: 10),
        WIDGETS.ask('rating', ask.ratingStr),
        SizedBox(height: 10),
        WIDGETS.ask('tradable', ask.tradableStr),
      ]
    );

    final priceData = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        WIDGETS.ask('source', ask.contra),
        SizedBox(height: 10),
        WIDGETS.ask('price', ask.priceStr),
        SizedBox(height: 10),
        WIDGETS.ask('yield', ask.yieldStr),
        SizedBox(height: 10),
        WIDGETS.ask('spread', ask.spreadStr),
      ]
    );

    return sideContainer(context, [priceData, qtyData, infoData]);
  }

  void _setData() {
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
        title: Text(BooksTab.title),
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

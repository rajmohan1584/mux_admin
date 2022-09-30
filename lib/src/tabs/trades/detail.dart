import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/model/trades.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/trades/helper.dart';
import 'package:mux_admin/src/utils/widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class TradeDetailTab extends StatefulWidget {
  final Trade _trade;
  const TradeDetailTab(this._trade);

  @override
  _TradeDetailTabState createState() => _TradeDetailTabState();
}

class _TradeDetailTabState extends State<TradeDetailTab> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  static Widget routedToTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
      child: Text("TODO",
          textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0)),
    );
  }

  Widget _buildBody() {
    final tradeCardMargin = EdgeInsets.fromLTRB(0, 0, 0, 0);
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TradeHelper.buildTrade(context, widget._trade, tradeCardMargin),
          routedToTitle(),
          WIDGETS.hl(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 12),
              itemBuilder: _listBuilder,
            ),
          ),
        ],
      ),
    );
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= 0) return Text('null');

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(onTap: () {}, child: Text('TODO')));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order')),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    final tradeId = widget._trade.displayTradeId;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Trade - $tradeId'),
        previousPageTitle: 'Trades',
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

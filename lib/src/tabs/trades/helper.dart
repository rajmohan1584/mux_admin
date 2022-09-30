import 'package:flutter/material.dart';
import 'package:mux_admin/src/model/trades.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/widgets.dart';

class TradeHelper {
  static Widget buildStatsTitle(BuildContext context) {
    return Text('Title');
  }
  
  static buildTrade(BuildContext context, Trade trade, [EdgeInsets margin]) {
    final children = <Widget>[
      Padding(
        padding:EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            mainRow(context, trade),
            WIDGETS.security(trade.security),
            WIDGETS.hl(),
            detailRow(context, trade)
          ],
        )
      ),
      //buildBottomRow(context, name, status)
    ];

    return Card(
      margin:  margin!=null ? margin : EdgeInsets.fromLTRB(12, 12, 12, 0),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:children
      )
    );
  }

  static Widget mainRow(BuildContext context, Trade trade) {
    final icon = (trade.side=='buy') ?
        WIDGETS.nameImage('buy', IMAGES.buy) :
        WIDGETS.nameImage('sell', IMAGES.sell);

    Widget left = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text(trade.displayTradeId, style:TextStyle(fontWeight: FontWeight.bold)),
        )
      ]);

    //Widget mid = Text(offer.cusip);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[left]
    );
  }

  static Widget detailRow(BuildContext context, Trade trade) {
    final dtItems = <Widget>[];
    dtItems.add(Text(trade.createdTimeStr));
    dtItems.add(Text(trade.createdDateShortStr));

    Widget dt = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:dtItems
    );

    final children = [dt];

    children.add(WIDGETS.nameValue("qty", trade.qtyStr));
    children.add(WIDGETS.nameValue("price", trade.priceStr));
    children.add(WIDGETS.nameValue("yield", trade.yieldldStr));
    children.add(WIDGETS.nameValue("princ", trade.principalStr));
    children.add(WIDGETS.nameValue("net money", trade.netMoneyStr));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children
    );
  }
}

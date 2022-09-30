import 'package:flutter/material.dart';
import 'package:mux_admin/src/model/offers.dart';
import 'package:mux_admin/src/utils/colors.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/widgets.dart';

class OfferHelper {
  static Widget buildStatsTitle(BuildContext context) {
    return Text('Title');
  }

  static buildOffer(BuildContext context, Offer offer, [EdgeInsets? margin]) {
    final children = <Widget>[
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              mainRow(context, offer),
              WIDGETS.security(offer.security),
              WIDGETS.hl(),
              detailRow(context, offer)
            ],
          )),
      //buildBottomRow(context, name, status)
    ];

    return Card(
        margin: margin != null ? margin : EdgeInsets.fromLTRB(12, 12, 12, 0),
        elevation: 5,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children));
  }

  static Widget mainRow(BuildContext context, Offer offer) {
    final side = (offer.hasBid && offer.hasAsk)
        ? "bid-ask"
        : offer.hasBid
            ? "bid"
            : "ask";
    Widget icon;
    if (side == 'ask')
      icon = WIDGETS.nameImage(side, IMAGES.ask);
    else if (side == 'bid')
      icon = WIDGETS.nameImage(side, IMAGES.bid);
    else
      icon = WIDGETS.nameImage(side, IMAGES.bidask);

    Widget left = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icon,
/*        Image.asset(
          'assets/images/' + side + '-offering.png',
          width: 30,
          height: 30,
          fit: BoxFit.cover,
        ),
*/
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(offer.dispRequestId,
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ]);

    //Widget mid = Text(offer.cusip);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[left]);
  }

  /*
  Widget secondRow(BuildContext context, Offer offer) {
    Widget mid = Padding(
      padding: const EdgeInsets.only(left:35.0),
      child: Text(offer.displayName)
    );
    return mid;
  }

  Widget sideColumn(BuildContext context, OfferSide side) {
    Widget qty = WIDGETS.nameValue("qty", side.qtyStr);
    Widget minQty = WIDGETS.nameValue("min", side.minQtyStr);
    Widget price = WIDGETS.nameValue("price", side.priceStr);
    Widget eeld = WIDGETS.nameValue("yield", side.yieldldStr);
    Widget spread = WIDGETS.nameValue("spread", side.spreadStr);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[qty, minQty, price, eeld, spread]
    );
  }

  Widget thirdRowOld(BuildContext context, Offer offer) {
    Widget bid = sideColumn(context, offer.bid);
    Widget ask = sideColumn(context, offer.ask);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2, // 20%
          child: Container(color: Colors.red[50], child: bid)
        ),
        Expanded(
          flex: 2, // 20%
          child: Container(color: Colors.blue[50], child: ask)
        )
      ],
    );
  }
  */

  static Widget detailRow(BuildContext context, Offer offer) {
    final dtItems = <Widget>[];
    dtItems.add(Text(offer.receivedTimeStr));
    dtItems.add(Text(offer.receivedDateShortStr));
    if (offer.hasBid && offer.hasAsk) dtItems.add(Text(""));

    Widget dt = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: dtItems);

    final ttlItems = <Widget>[];
    if (offer.hasBid)
      ttlItems.add(
          Text("BID", style: TextStyle(fontSize: 14.0, color: COLORS.bid)));
    if (offer.hasAsk)
      ttlItems.add(
          Text("ASK", style: TextStyle(fontSize: 14.0, color: COLORS.ask)));
    ttlItems.add(Text("", style: TextStyle(fontSize: 12.0)));

    Widget ttl = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: ttlItems);

    final children = [dt, ttl];

    final bid = offer.bid;
    final ask = offer.ask;

    if (offer.hasBid && offer.hasAsk) {
      children.add(WIDGETS.bidAsk("qty", bid.qtyStr, ask.qtyStr));
      children.add(WIDGETS.bidAsk("min", bid.minQtyStr, ask.minQtyStr));
      children.add(WIDGETS.bidAsk("price", bid.priceStr, ask.priceStr));
      children.add(WIDGETS.bidAsk("yield", bid.yieldldStr, ask.yieldldStr));
      children.add(WIDGETS.bidAsk("spread", bid.spreadStr, ask.spreadStr));
    } else if (offer.hasBid) {
      children.add(WIDGETS.bid("qty", bid.qtyStr));
      children.add(WIDGETS.bid("min", bid.minQtyStr));
      children.add(WIDGETS.bid("price", bid.priceStr));
      children.add(WIDGETS.bid("yield", bid.yieldldStr));
      children.add(WIDGETS.bid("spread", bid.spreadStr));
    } else if (offer.hasAsk) {
      children.add(WIDGETS.ask("qty", ask.qtyStr));
      children.add(WIDGETS.ask("min", ask.minQtyStr));
      children.add(WIDGETS.ask("price", ask.priceStr));
      children.add(WIDGETS.ask("yield", ask.yieldldStr));
      children.add(WIDGETS.ask("spread", ask.spreadStr));
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children);
  }
}

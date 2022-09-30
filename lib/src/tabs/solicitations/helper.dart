import 'package:flutter/material.dart';
import 'package:mux_admin/src/model/solicitations.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/widgets.dart';

class SolicitationHelper {
  static Widget buildStatsTitle(BuildContext context) {
    return Text('Title');
  }

  static buildSolicitation(BuildContext context, Solicitation sol,
      [EdgeInsets? margin]) {
    final children = <Widget>[
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              mainRow(context, sol),
              solSecurity(sol.bondTypeDesc, sol.cusip, sol.remoteSystem),
              WIDGETS.hl(),
              detailRow(context, sol)
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

  static Widget mainRow(BuildContext context, Solicitation sol) {
    final icon = (sol.side == 'Ask')
        ? WIDGETS.nameImage('ask', IMAGES.ask)
        : WIDGETS.nameImage('bid', IMAGES.bid);

    Widget left = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icon,
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(sol.displaySolId,
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ]);

    Widget right;

    if (sol.blotterStatus != null) {
      right = Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: Text(sol.blotterStatus,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            IMAGES.blotterState(sol
                .blotterStatus) /*
          Image.asset(
            'assets/images/blotter-state-' + sol.blotterStatus + '.png',
            fit: BoxFit.cover,
            width: 15.0,
            height: 15.0,
          )*/
          ]);
    } else {
      right = Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text('Complete'))
          ]);
    }

    //Widget mid = Text(offer.cusip);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[left, right]);
  }

  static Widget solSecurity(
      String bondTypeDesc, String cusip, String remoteSystem) {
    Widget left = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(remoteSystem), Text('remote System')]);

    Widget right = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(cusip, style: TextStyle(fontSize: 15.0)),
          Text(bondTypeDesc, style: TextStyle(fontSize: 14.0))
        ]);

    return Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 75, child: left),
              Expanded(flex: 30, child: right)
            ]));
  }

  static Widget detailRow(BuildContext context, Solicitation sol) {
    final dtItems = <Widget>[];
    dtItems.add(Text(sol.createdTimeStr));
    dtItems.add(Text(sol.createdDateShortStr));

    Widget dt = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: dtItems);

    final children = [dt];

    children.add(WIDGETS.nameValue("qty", sol.qtyStr));
    children.add(WIDGETS.nameValue("price", sol.priceStr));
    children.add(WIDGETS.nameValue("yield", sol.yieldldStr));

    children.add(WIDGETS.nameValue("acc Int", sol.accruedInterestStr));

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children);
  }
}

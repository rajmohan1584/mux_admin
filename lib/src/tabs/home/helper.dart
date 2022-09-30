import 'package:flutter/material.dart';
import 'package:mux_admin/src/utils/widgets.dart';

class HomeHelper {
  static Widget buildStatsTitle(BuildContext context) {
    return Text('Title');
  }

  static Widget buildStatsRow(BuildContext context, String name, String value) {
    Widget valueWidget = (name == 'Status') ?
      WIDGETS.connStatus(context, value) :
      Text(value);
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:50.0),
            child: Text(name),
          ),
          Padding(
            padding: const EdgeInsets.only(right:50.0),
            child: valueWidget,
          )
        ]
      ),
    );
  }
}
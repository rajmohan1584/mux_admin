import 'package:flutter/material.dart';

class ClientTile extends StatelessWidget {
  final _child;
  ClientTile(this._child);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
        elevation: 15,
        child: Padding(padding: EdgeInsets.all(0.0), child: _child),
      )
    );
  }
}

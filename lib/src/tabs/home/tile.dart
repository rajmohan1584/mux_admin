import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final _child;
  HomeTile(this._child);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
        elevation: 15,
        child: Padding(padding: EdgeInsets.all(15.0), child: _child),
      )
    );
  }

  /*
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(24.0),
      child: _child
    );
  }
  */
}

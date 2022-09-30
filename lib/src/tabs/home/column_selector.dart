import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnSelector extends StatelessWidget {
  final List<String> _columns;
  final int _columnIndex;
  final Function _onColumnIndexChanged;

  ColumnSelector(this._columns, this._columnIndex, this._onColumnIndexChanged);

  @override
  Widget build(BuildContext context) {
    return buildSelector(context);
  }
  
  buildSelector(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child:_buildSelectorRow(context)
    );
  }

  Widget _buildSelectorRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap:(){_incColumn(-1);},
          child: Icon(CupertinoIcons.left_chevron, size: 30.0)
        ),
        GestureDetector(
          onTap:(){print('OnTap');},
          child: Text( _columns[_columnIndex],  style: const TextStyle(fontSize: 15.0))
        ),
        GestureDetector(
          onTap:(){_incColumn(1);},
          child:Icon(CupertinoIcons.right_chevron, size: 30.0)
        )
      ]
    );
  }

  _incColumn(int delta) {
    int idx = _columnIndex;
    idx += delta;
    
    if (idx < 0) idx = _columns.length - 1;
    else
    if (idx >= _columns.length) idx = 0;

    _onColumnIndexChanged(idx);
  }
}

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/utils/colors.dart';
import 'package:mux_admin/src/utils/images.dart';

class TMButton extends StatelessWidget {
  final context;
  final bool disabled;
  final String _text;
  final String _color;
  final Function _onPressed;

  TMButton(this.context, this._text, this._color, this._onPressed,
      {this.disabled = false});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      final color = COLORS.color(_color);

      return OutlinedButton(
        child: new Text(
          _text,
          style: TextStyle(color: color),
        ),
        onPressed: (disabled) ? null : _onPressed,
//        borderSide: BorderSide(color: color),
        //       color: CupertinoColors.systemBlue,
        //     shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10.0)
        // )
      );

      /*
      return CupertinoButton(
        child: Text(_text),
        onPressed: _onPressed
      );
      */
    }

    return ElevatedButton(
      child: Text(_text),
      //elevation: 4.0,
      onPressed: _onPressed,
    );
  }
}

class TMIconButton extends StatelessWidget {
  final context;
  final bool disabled;
  final String _png;
  final String _text;
  final Color _color;
  final Function _onPressed;

  TMIconButton(
      this.context, this._png, this._text, this._color, this._onPressed,
      {this.disabled = false});

  @override
  Widget build(BuildContext context) {
    Color color;
    if (disabled) color = Colors.grey;
    Color textColor = (disabled) ? Colors.grey : Colors.black;

    final content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IMAGES.assetImage(_png, width: 40, height: 40, color: color),
        Text(_text, style: TextStyle(color: textColor))
      ],
    );

    return OutlinedButton(
      child: content,
      onPressed: (disabled) ? null : _onPressed,
      //borderSide: BorderSide(color: Colors.white),
      //color: CupertinoColors.systemBlue,
      //shape: RoundedRectangleBorder(
      //  borderRadius: BorderRadius.circular(10.0)
      //)
    );
  }
}

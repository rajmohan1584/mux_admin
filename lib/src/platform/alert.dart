import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TMConfirmAction {
  String _text;
  bool isDestructive = false;

  TMConfirmAction(this._text, {this.isDestructive = false});
}

////////////////////////////////////////////////////////
/////
Widget _buildAlertIOS(BuildContext context, String title, String content) {
  final Widget ok = CupertinoDialogAction(
      isDefaultAction: true,
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop("OK");
      });

  return CupertinoAlertDialog(
      title: new Text(title), content: new Text(content), actions: [ok]);
}

Widget _buildAlertAndroid(BuildContext context, String title, String content) {
  final Widget ok = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      });

  return AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: [ok],
  );
}

////////////////////////////////////////////////////////
/////
///
class TimedAlert extends StatefulWidget {
  final int _seconds;
  final String _title;
  final String _content;
  final Function _handler;

  TimedAlert(this._seconds, this._title, this._content, this._handler);

  @override
  _TimedAlertState createState() => _TimedAlertState();
}

class _TimedAlertState extends State<TimedAlert> {
  Timer? _timer;
  int? secondsRemaining;

  @override
  void initState() {
    setState(() {
      secondsRemaining = widget._seconds;
      startTimer();
    });
    super.initState();
  }

  void dispose() {
    stopTimer();
    super.dispose();
  }

  startTimer() {
    if (_timer != null && _timer!.isActive) {
      print("startTimer - timer already active");
      return;
    }
    const dur = Duration(seconds: 1);
    _timer = Timer.periodic(dur, onTimer);
    print("Timer started");
    onTimer(_timer);
  }

  onTimer(timer) {
    setState(() {
      secondsRemaining = secondsRemaining! - 1;
      if (secondsRemaining! <= 0) {
        Navigator.of(context, rootNavigator: true).pop("OK");
        widget._handler("OK");
      }
    });
    print("onTimer");
  }

  stopTimer() {
    if (_timer != null) {
      print("Timer Stopped");
      _timer!.cancel();
    }
  }

  @override
  build(BuildContext context) {
    final Widget ok = CupertinoDialogAction(
        isDefaultAction: true,
        child: Text("OK ...in $secondsRemaining"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop("OK");
          widget._handler("OK");
        });

    final Widget cancel = CupertinoDialogAction(
        isDefaultAction: true,
        child: Text("Cancel"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop("Cancel");
          widget._handler("Cancel");
        });

    return CupertinoAlertDialog(
        title: new Text(widget._title),
        content: new Text(widget._content),
        actions: [ok, cancel]);
  }
}

////////////////////////////////////////////////////////
/////
_buildConfirmAndroid(BuildContext context, String title, String content,
    List<String> actions, Function handler) {
  final buttons = <Widget>[];
  actions.forEach((action) {
    buttons.add(TextButton(
        child: Text(action),
        onPressed: () {
          Navigator.of(context).pop(action);
          handler(action);
        }));
  });

  return AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: buttons,
  );
}

_buildConfirmSheetIOS(BuildContext context, String title, String content,
    List<TMConfirmAction> actions, Function handler) {
  final buttons = <Widget>[];
  actions.forEach((action) {
    buttons.add(CupertinoActionSheetAction(
      child: Text(action._text),
      isDestructiveAction: action.isDestructive,
      onPressed: () {
        //Navigator.pop(context, 'One');
        Navigator.of(context, rootNavigator: true).pop(action._text);
        handler(action._text);
      },
    ));
  });

  return CupertinoActionSheet(
      title: Text(title),
      message: Text(content),
      actions: buttons,
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        isDefaultAction: true,
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop('Cancel');
          //Navigator.pop(context, 'Cancel');
        },
      ));
}

////////////////////////////////////////////////////////
/////
Widget _buildConfirmDialogIOS(BuildContext context, String title,
    String content, List<String> actions, Function handler) {
  final dlgActions = <Widget>[];

  actions.forEach((action) {
    dlgActions.add(CupertinoDialogAction(
        child: Text(action),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop(action);
          handler(action);
        }));
  });

  return CupertinoAlertDialog(
      title: new Text(title), content: new Text(content), actions: dlgActions);
}

class TMAlert {
  static alert(BuildContext context, String title, String content) {
    Widget alert = Platform.isIOS
        ? _buildAlertIOS(context, title, content)
        : _buildAlertAndroid(context, title, content);

    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  static confirmSheet(BuildContext context, String title, String content,
      List<TMConfirmAction> actions, Function handler) {
    final actionsText = [];
    actions.forEach((action) {
      actionsText.add(action._text);
    });
    Widget alert = Platform.isIOS
        ? _buildConfirmSheetIOS(context, title, content, actions, handler)
        : _buildConfirmAndroid(
            context, title, content, actionsText as List<String>, handler);

    Platform.isIOS
        ? showCupertinoModalPopup(
            context: context, builder: (BuildContext context) => alert)
        : showDialog(
            context: context,
            builder: (context) {
              return alert;
            });
  }

  static confirmDialog(BuildContext context, String title, String content,
      List<String> actions, Function handler) {
    Widget alert = Platform.isIOS
        ? _buildConfirmDialogIOS(context, title, content, actions, handler)
        : _buildConfirmAndroid(context, title, content, actions, handler);

    Platform.isIOS
        ? showCupertinoModalPopup(
            context: context, builder: (BuildContext context) => alert)
        : showDialog(
            context: context,
            builder: (context) {
              return alert;
            });
  }

  static timedAlert(BuildContext context, int seconds, String title,
      String content, Function handler) {
    if (seconds <= 0) return handler("OK");

    showDialog(
        context: context,
        builder: (context) {
          return TimedAlert(seconds, title, content, handler);
        });
  }
}

//import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/main.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/platform/alert.dart';
import 'package:mux_admin/src/platform/widget.dart';

class OverflowTab extends StatefulWidget {
  static const title = 'Orders';
  final Function parentAction;
  final int prevTab;
  const OverflowTab(
      {Key? key,
      this.androidDrawer,
      required this.parentAction,
      required this.prevTab})
      : super(key: key);

  final Widget? androidDrawer;

  @override
  _OverflowTabState createState() => _OverflowTabState();
}

class _OverflowTabState extends State<OverflowTab> {
//  bool _show = false;
  final List<Object> orders = [];
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

/*
  void _setData() {
  }

  Future<void> _refreshData() {
    return Future.delayed(
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 2),
      () => setState(() => _setData()),
    );
  }
*/
  // ===========================================================================
  // Non-shared code below because:
  // - Android and iOS have different scaffolds
  // - There are differenc items in the app bar / nav bar
  // - Android has a hamburger drawer, iOS has bottom tabs
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================
  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(OverflowTab.title),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async =>
                await _androidRefreshKey.currentState!.show(),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //TMAlert.alert(context, 'title', 'message');
            },
          ),
        ],
      ),
      drawer: widget.androidDrawer,
      body: Text('ABC'),
    );
  }

  Widget _buildIos(BuildContext context) {
    return Scaffold(
        body: Builder(
      builder: (context) => Align(
        alignment: Alignment.bottomRight,
        child: buildChild(context),
      ),
    ));
  }

  Widget buildChild(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(children: <Widget>[
                  Positioned(bottom: 10, left: 10, child: buildOptions(context))
                ]))));
  }

  Widget buildOptions(BuildContext context) {
    final List<CupertinoActionSheetAction> actions = [
      CupertinoActionSheetAction(
          child: Text('Logout'),
          isDestructiveAction: true,
          onPressed: () => tryLogout(context)),
      CupertinoActionSheetAction(
          child: Text('Screen #6 - TODO'), onPressed: () {}),
      CupertinoActionSheetAction(
          child: Text('Cancel'),
          onPressed: () {
            widget.parentAction(widget.prevTab);
          }),
    ];

    return CupertinoActionSheet(title: Text("More..."), actions: actions);
  }

  Widget buildChild2(BuildContext context) {
    return CupertinoActionSheet(
        title: const Text('Choose frankly 😊'),
        message: const Text('Your options are '),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: const Text('Logout'),
            onPressed: () => tryLogout(context),
          ),
          CupertinoActionSheetAction(
            child: const Text('🙋 No'),
            onPressed: () {
              Navigator.pop(context, '🙋 No');
            },
          ),
          CupertinoActionSheetAction(
            child: const Text("🙋 Can't say"),
            onPressed: () {
              Navigator.pop(context, "🙋 Can't say");
            },
          ),
          CupertinoActionSheetAction(
            child: const Text("🙋 Decide in next post"),
            onPressed: () {
              Navigator.pop(context, "🙋 Decide in next post");
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: const Text('Cancel'),
          isDefaultAction: true,
          onPressed: () {
            widget.parentAction(widget.prevTab);
          },
        ));
  }

  tryLogout(BuildContext context) {
    TMAlert.confirmDialog(context, "Logout", "Confirm Logout", ["OK", "Cancel"],
        (action) {
      if (action == "OK") {
        Api.logout(context, (_) {
          RestartWidget.restartApp(context);
        });
      }
    });
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/login.dart';
import 'package:mux_admin/main.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/platform/alert.dart';
import 'dart:async';

import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/overflow/overflow.dart';
import 'package:mux_admin/src/tabs/solicitations/solicitations.dart';
import 'package:mux_admin/src/tabs/trades/trades.dart';
import 'package:mux_admin/src/utils/images.dart';

import 'package:mux_admin/src/utils/widgets.dart';
import 'package:mux_admin/src/tabs/home/home.dart';
import 'package:mux_admin/src/tabs/clients/clients.dart';
import 'package:mux_admin/src/tabs/orders/orders.dart';
import 'package:mux_admin/src/tabs/offers/offers.dart';

//import 'package:web_socket_channel/io.dart';
//import 'package:web_socket_channel/status.dart' as status;

//import 'package:socket_io_client/socket_io_client.dart' as IO;
//IO.Socket ws;

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
Timer _timer;
//IOWebSocketChannel ws;

// Shows a different type of scaffold depending on the platform.
//
// This file has the most amount of non-sharable code since it behaves the most
// differently between the platforms.
//
// These differences are also subjective and have more than one 'right' answer
// depending on the app and content.
class PlatformNav extends StatefulWidget {
  @override
  _PlatformNavState createState() => _PlatformNavState();
}

class _PlatformNavState extends State<PlatformNav> with WidgetsBindingObserver {
  int _currentIndex = 0;
  int _prevTabIndex = 0;
  final CupertinoTabController _controller = CupertinoTabController();
  // This app keeps a global key for the songs tab because it owns a bunch of
  // data. Since changing platform re-parents those tabs into different
  // scaffolds, keeping a global key to it lets this app keep that tab's data as
  // the platform toggles.
  //
  // This isn't needed for apps that doesn't toggle platforms while running.
  final homeTabKey = GlobalKey();
  final Clients clients = Clients();

  initState() {
    startTimer();
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    Api.getClients().then((jClients) {
      setState(() {
        clients.reload(jClients);
      });
    });
  }

  Future<void> onReloadConnections() async {
    Api.getConnections().then((jConnections) {
      setState(() {
        clients.mergeConnections(jConnections);
      });
    });
  }

  void dispose() {
    _controller.dispose();
    WidgetsBinding.instance.removeObserver(this);
    stopTimer();

    //stopWebsocket();
    super.dispose();
  }

  startTimer() {
    if (_timer != null && _timer.isActive) {
      print("startTimer - timer already active");
      return;
    }
    const dur = Duration(seconds: 30);
    _timer = Timer.periodic(dur, onTimer);
    print("Timer started");
    onTimer(_timer);

    try {
      //startWebsocket();
    } catch (_) {
      print("WS> Error starting");
    }
  }

  onTimer(timer) {
//    onReloadConnections();
    print("onTimer");
  }

  stopTimer() {
    if (_timer != null) {
      print("Timer Stopped");
      _timer.cancel();
      stopWebsocket();
    }
  }

  //////////////////////////////////////////////////////
  ////
  startWebsocket() async {
    final uri = 'http://192.168.29.175:3000';
    final path = '/api/v1/muxkit/ws';

    final opts = <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
      'upgrade': false,
      'path': path
    };

    /*
    ws = IO.io(uri, opts);

    ws.on('connect', (data){
      print ("WS> Connected");
		  print(data);
		});
		
    ws.on("hb", (data) {
      print ("WS> Heartbeat");
		  print(data);
		});

    print ("WS> Connecting");
    ws.connect();
    */
    /*
    Map myheaders=new Map<String,dynamic>();
    myheaders["Origin"]="file://";
    myheaders["websocket-protocol"]="htpp";

    final url = 'ws://192.168.29.175:3000/api/v1/muxkit/ws';
    WebSocket ws = await WebSocket.connect(url, headers: myheaders);
    //ws.sink.add("connected!");
    final msg = await ws.first.timeout(const Duration(seconds:10));
    print ('WS message:$msg');
    await ws.close();
    */
    /*
    //final url = '${Api.getHost()}/api/vi/muxkit/ws';
    final url = 'ws://192.168.29.175:3000/api/v1/muxkit/ws';
    ws = IOWebSocketChannel.connect(url);

    ws.stream.listen((message) {
      print('WS:$message');
    });
    */
  }

  stopWebsocket() {
//    ws.sink.close(status.goingAway);
    /*
    if (ws != null) {
      print ("Disconnecting WS");
      ws.disconnect();
    }
    */
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState appState) {
    switch (appState) {
      case AppLifecycleState.paused:
        stopTimer();
        print('HomePage - paused');
        break;
      case AppLifecycleState.detached:
        print('HomePage - detached');
        break;
      case AppLifecycleState.inactive:
        print('HomePage - inactive');
        break;
      case AppLifecycleState.resumed:
        startTimer();
        print('HomePage - resumed');
        break;
    }
  }

  // In Material, this app uses the hamburger menu paradigm and flatly lists
  // all 4 possible tabs. This drawer is injected into the songs tab which is
  // actually building the scaffold around the drawer.
  Widget _buildAndroidHomePage(BuildContext context) {
    return HomeTab(
      key: homeTabKey,
      androidDrawer: _AndroidDrawer(),
    );
  }

  _setTab(int index) {
    print('setTab $index');
    //Navigator.of(context).popUntil((r) => r.isFirst);
    //firstTabNavKey.currentState.popUntil((r) => r.isFirst);
    setState(() {
      _currentIndex = index;
      _controller.index = index;
    });
  }

  // On iOS, the app uses a bottom tab paradigm. Here, each tab view sits inside
  // a tab in the tab scaffold. The tab scaffold also positions the tab bar
  // in a row at the bottom.
  //
  // An important thing to note is that while a Material Drawer can display a
  // large number of items, a tab bar cannot. To illustrate one way of adjusting
  // for this, the app folds its fourth tab (the settings page) into the
  // third tab. This is a common pattern on iOS.
  Widget _buildIosHomePage(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          print('$index $_currentIndex');
          if (index != 5) {
            setState(() => _prevTabIndex = index);
          }
          return;
        },
        items: [
          /*
          WIDGETS.bottomBarNavItem(HomeTab.title, HomeTab.iosIcon, HomeTab.iosIconActive),
          WIDGETS.bottomBarNavItem(ClientsTab.title, ClientsTab.iosIcon, ClientsTab.iosIconActive),
          WIDGETS.bottomBarNavItem(HomeTab.title, HomeTab.iosIcon, HomeTab.iosIconActive),
          WIDGETS.bottomBarNavItem(OffersTab.title, OffersTab.iosIcon, OffersTab.iosIconActive),
          WIDGETS.bottomBarNavItem(OrdersTab.title, OrdersTab.iosIcon, OrdersTab.iosIconActive),
          */
          WIDGETS.iosNavItem(context, HomeTab.title), //HomeTab.title),
          WIDGETS.iosNavItem(context, ClientsTab.title),
          WIDGETS.iosNavItem(context, OffersTab.title),
          WIDGETS.iosNavItem(context, TradesTab.title),
          WIDGETS.iosNavItem(context, SolicitationsTab.title),
          WIDGETS.iosNavItem(context, 'More'),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              navigatorKey: firstTabNavKey,
              defaultTitle: HomeTab.title,
              builder: (context) => HomeTab(key: homeTabKey),
            );
          case 1:
            return CupertinoTabView(
              defaultTitle: ClientsTab.title,
              builder: (context) => ClientsTab(),
            );
          case 2:
            return CupertinoTabView(
              defaultTitle: OffersTab.title,
              builder: (context) => OffersTab(),
            );
          case 3:
            return CupertinoTabView(
              defaultTitle: TradesTab.title,
              builder: (context) => TradesTab(),
            );
          case 4:
            return CupertinoTabView(
              defaultTitle: SolicitationsTab.title,
              builder: (context) => SolicitationsTab(),
            );
          case 5:
            return CupertinoTabView(
              defaultTitle: OrdersTab.title,
              builder: (context) =>
                  OverflowTab(parentAction: _setTab, prevTab: _prevTabIndex),
            );
          default:
            return LoginScreen();
            assert(false, 'Unexpected tab');
            return null;
        }
      },
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroidHomePage,
      iosBuilder: _buildIosHomePage,
    );
  }
}

class _AndroidDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: <Widget>[
                  IMAGES.assetImage("mux_admin.png", width: 96, height: 96),
                  Text("MUX Admin")
                ],
              )),
        ),
        ListTile(
          leading: WIDGETS.androidLeading(context, HomeTab.title),
          title: Text(HomeTab.title),
          onTap: () {
            Navigator.pop(context);
            Navigator.push<void>(
                context, MaterialPageRoute(builder: (context) => HomeTab()));
          },
        ),
        ListTile(
          leading: WIDGETS.androidLeading(context, ClientsTab.title),
          title: Text(ClientsTab.title),
          onTap: () {
            Navigator.pop(context);
            Navigator.push<void>(
                context,
                MaterialPageRoute(
                    builder: (context) => ClientsTab(androidDrawer: this)));
          },
        ),
        ListTile(
          leading: WIDGETS.androidLeading(context, OffersTab.title),
          title: Text(OffersTab.title),
          onTap: () {
            Navigator.pop(context);
            Navigator.push<void>(
                context,
                MaterialPageRoute(
                    builder: (context) => OffersTab(androidDrawer: this)));
          },
        ),
        /*
          // Long drawer contents are often segmented.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          */
        ListTile(
          leading: WIDGETS.androidLeading(context, TradesTab.title),
          title: Text(TradesTab.title),
          onTap: () {
            Navigator.pop(context);
            Navigator.push<void>(
                context,
                MaterialPageRoute(
                    builder: (context) => TradesTab(androidDrawer: this)));
          },
        ),
        ListTile(
          leading: WIDGETS.androidLeading(context, SolicitationsTab.title),
          title: Text(SolicitationsTab.title),
          onTap: () {
            Navigator.pop(context);
            Navigator.push<void>(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SolicitationsTab(androidDrawer: this)));
          },
        ),
        ListTile(
            leading: WIDGETS.androidLeading(context, 'Logout'),
            title: Text('Logout'),
            onTap: () {
              TMAlert.confirmDialog(
                  context, "Logout", "Confirm Logout", ["OK", "Cancel"],
                  (action) {
                if (action == "OK") {
                  Api.logout(context, (_) {
                    RestartWidget.restartApp(context);
                  });
                }
              });
            })
      ]),
    );
  }
}

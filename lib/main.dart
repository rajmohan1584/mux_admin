import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/login.dart';
//import 'package:mux_admin/nav.dart';

/*
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/books/books.dart';
import 'package:mux_admin/src/tabs/overflow/overflow.dart';
import 'package:mux_admin/src/utils/screen.dart';

import 'package:mux_admin/src/utils/widgets.dart';
import 'package:mux_admin/src/tabs/home/home.dart';
import 'package:mux_admin/src/tabs/clients/clients.dart';
import 'package:mux_admin/src/tabs/orders/orders.dart';
import 'package:mux_admin/src/tabs/offers/offers.dart';
*/

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();

void main0() => runApp(PlatformApp(false));

void main() {
  runApp(
    RestartWidget(
      child: PlatformApp(false),
    ),
  );
}

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>().restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}

class PlatformApp extends StatelessWidget {
  bool _logout;
  PlatformApp(this._logout);
  @override
  Widget build(context) {
    
    // Either Material or Cupertino widgets work in either Material or Cupertino
    // Apps.
    return MaterialApp(
      title: 'TM Mux Admin',
      theme: ThemeData(
        // Use the green theme for Material widgets.
        primarySwatch: Colors.green,
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
    // additional settings go here
      builder: (context, child) {
        bool qDarkmodeEnable = false;
        var qdarkMode = MediaQuery.of(context).platformBrightness;
        if (qdarkMode == Brightness.dark){
            qDarkmodeEnable=true;
        } else {
            qDarkmodeEnable=false;
        }
        var cupertinoTheme = CupertinoTheme(
          // Instead of letting Cupertino widgets auto-adapt to the Material
          // theme (which is green), this app will use a different theme
          // for Cupertino (which is blue by default).
          data: CupertinoThemeData(
            brightness: (qDarkmodeEnable==true) ? Brightness.dark : Brightness.light,
          ),
          child: Material(child: child),
        );
        return cupertinoTheme;
      },
//      home: PlatformAdaptingHomePage(),
      //home: PlatformNav(),
      home: LoginScreen()
    );
  }
}

/*
// Shows a different type of scaffold depending on the platform.
//
// This file has the most amount of non-sharable code since it behaves the most
// differently between the platforms.
//
// These differences are also subjective and have more than one 'right' answer
// depending on the app and content.
class PlatformAdaptingHomePage extends StatefulWidget {
  @override
  _PlatformAdaptingHomePageState createState() =>
      _PlatformAdaptingHomePageState();
}

class _PlatformAdaptingHomePageState extends State<PlatformAdaptingHomePage> {
  int _currentIndex = 0;
  final CupertinoTabController _controller = CupertinoTabController();
  // This app keeps a global key for the songs tab because it owns a bunch of
  // data. Since changing platform re-parents those tabs into different
  // scaffolds, keeping a global key to it lets this app keep that tab's data as
  // the platform toggles.
  //
  // This isn't needed for apps that doesn't toggle platforms while running.
  final homeTabKey = GlobalKey();

  initState() {
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
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
    print ('setTab $index');
    if (index == 0) {
      print('Going home');
      //Navigator.of(context).popUntil((r) => r.isFirst);
      //firstTabNavKey.currentState.popUntil((r) => r.isFirst); 
      setState(() {
        _currentIndex = 0;
        _controller.index = index;
      });
    }
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
    SCREEN.init(context);
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: (int valueChanged) {
          print('$valueChanged $_currentIndex');
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
          WIDGETS.iosNavItem(context, HomeTab.title),
          WIDGETS.iosNavItem(context, ClientsTab.title),
          WIDGETS.iosNavItem(context, BooksTab.title),
          WIDGETS.iosNavItem(context, OffersTab.title),
          WIDGETS.iosNavItem(context, OrdersTab.title),
          //WIDGETS.iosNavItem(context, OrdersTab.title),
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
              defaultTitle: BooksTab.title,
              builder: (context) => BooksTab(),
            );
          case 3:
            return CupertinoTabView(
              defaultTitle: OffersTab.title,
              builder: (context) => OffersTab(),
            );
          case 4:
            return CupertinoTabView(
              defaultTitle: OrdersTab.title,
              builder: (context) => OrdersTab(),
            );
          case 5:
            return CupertinoTabView(
              defaultTitle: OrdersTab.title,
              builder: (context) => OverflowTab(parentAction:_setTab),
            );
          default:
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Icon(
                Icons.account_circle,
                color: Colors.green.shade800,
                size: 96,
              ),
            ),
          ),
          ListTile(
            leading: HomeTab.androidIcon,
            title: Text(HomeTab.title),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: HomeTab.androidIcon,
            title: Text(HomeTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(
                  context, MaterialPageRoute(builder: (context) => HomeTab()));
            },
          ),
          ListTile(
            leading: HomeTab.androidIcon,
            title: Text(HomeTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => HomeTab()));
            },
          ),
          // Long drawer contents are often segmented.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          ListTile(
            leading: HomeTab.androidIcon,
            title: Text(HomeTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => HomeTab()));
            },
          ),
        ],
      ),
    );
  }
}

*/

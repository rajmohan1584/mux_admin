import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/model/security.dart';
import 'package:mux_admin/src/utils/colors.dart';
import 'package:mux_admin/src/utils/images.dart';

class WIDGETS {
  static Widget hl() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(height: 1.0, color: Colors.black12));
  }

  static Widget nameValue(String name, String value) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value, style: TextStyle(fontSize: 14.0)),
          Text(name, style: TextStyle(fontSize: 12.0))
        ]);
  }

  static Widget valueValue(String value1, String value2) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value1, style: TextStyle(fontSize: 14.0)),
          Text(value2, style: TextStyle(fontSize: 14.0))
        ]);
  }

  static Widget nameWidget(String name, Widget widget) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [widget, Text(name, style: TextStyle(fontSize: 12.0))]);
  }

  static Widget dateTime(String date, String time) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(time, style: TextStyle(fontSize: 14.0)),
          Text(date, style: TextStyle(fontSize: 14.0))
        ]);
  }

  static Widget nameImage(String name, Image img) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [img, Text(name, style: TextStyle(fontSize: 12.0))]);
  }

  static Widget bid(String name, String bvalue) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(bvalue, style: TextStyle(fontSize: 14.0, color: COLORS.bid)),
          Text(name, style: TextStyle(fontSize: 12.0))
        ]);
  }

  static Widget ask(String name, String avalue) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(avalue, style: TextStyle(fontSize: 14.0, color: COLORS.ask)),
          Text(name, style: TextStyle(fontSize: 12.0))
        ]);
  }

  static Widget bidAsk(String name, String value1, String value2) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value1, style: TextStyle(fontSize: 14.0, color: COLORS.bid)),
          Text(value2, style: TextStyle(fontSize: 14.0, color: COLORS.ask)),
          Text(name, style: TextStyle(fontSize: 12.0))
        ]);
  }

  static Widget connStatus(BuildContext context, status) {
    if (status != 'DOWN' && status != 'UP') {
      return Text(status, style: TextStyle(fontSize: 14.0));
    }

    return Container(
      margin: const EdgeInsets.all(3.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: (status == 'UP') ? COLORS.up : COLORS.down,
        border: Border.all(width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Text(
        status,
        style: TextStyle(color: Colors.black, fontSize: 14.0),
      ),
    );
  }

  static Widget security(Security sec) {
    Widget left = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(sec.securityName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14.0)),
          Text(sec.displayInfo, style: TextStyle(fontSize: 14.0))
        ]);

    Widget right = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(sec.cusip, style: TextStyle(fontSize: 15.0)),
          Text(sec.bondTypeDesc, style: TextStyle(fontSize: 14.0))
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

  static Widget detailPageTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: Text(title, style: TextStyle(fontSize: 18.0)),
    );
  }

  static BottomNavigationBarItem bottomBarNavItem(
      String title, Image icon, Image active) {
    return BottomNavigationBarItem(
        label: title, icon: icon, activeIcon: active);
  }

  static Widget avatar(String png, [bool large = false]) {
    final w = (large) ? 60.0 : 30.0;
    final h = (large) ? 60.0 : 30.0;
    final r = (large) ? 28.0 : 18.0;

    final img = IMAGES.assetImage(png, width: w, height: h);

    return CircleAvatar(
        radius: r,
        backgroundColor: Colors.grey,
        child: CircleAvatar(
            radius: r - 1,
            backgroundColor: Colors.white,
            child: ClipOval(child: img)));
  }

  static iosNavItem(BuildContext context, String tabName) {
    String png = '';
    String iconName = '';
    String activeIconName = '';

    switch (tabName) {
      case 'Home':
        png = 'home';
        break;
      case 'Connections':
        png = 'connections';
        break;
      case 'Books':
        png = 'books';
        break;
      case 'Offers':
        png = 'offers';
        break;
      case 'Trades':
        png = 'trades';
        break;
      case 'Solicitations':
        png = 'solicitations';
        break;
      case 'Orders':
        png = 'orders';
        break;
      case 'More':
        png = 'more';
        break;
      default:
        png = 'home';
        break;
    }

    Color? iconColor;
    var qdarkMode = MediaQuery.of(context).platformBrightness;

    if (qdarkMode == Brightness.dark) {
      iconName = 'assets/images/$png-filled.png';
      activeIconName = 'assets/images/$png-filled.png';
      iconColor = Colors.white54;
    } else {
      iconName = 'assets/images/$png.png';
      activeIconName = 'assets/images/$png-filled.png';
    }

    /*
    final icon = (iconColor != null) ? 
      Image(image:AssetImage(activeIconName), color: iconColor) :
      Image(image:AssetImage(iconName));
    final activeIcon = Image(image:AssetImage(activeIconName), color: Colors.blue);
    */

    final width = 30.0;
    final height = 30.0;

    final icon = (iconColor != null)
        ? Image.asset(activeIconName,
            width: width, height: height, color: iconColor)
        : Image.asset(iconName, width: width, height: height);
    final activeIcon = Image.asset(activeIconName,
        width: width, height: height, color: Colors.blue);

    return BottomNavigationBarItem(
        label: tabName, icon: icon, activeIcon: activeIcon);
  }

  static androidLeading(BuildContext context, String tabName) {
    String png = '';

    switch (tabName) {
      case 'Home':
        png = 'home';
        break;
      case 'Connections':
        png = 'connections';
        break;
      case 'Books':
        png = 'books';
        break;
      case 'Offers':
        png = 'offers';
        break;
      case 'Trades':
        png = 'trades';
        break;
      case 'Solicitations':
        png = 'solicitations';
        break;
      case 'Orders':
        png = 'orders';
        break;
      case 'More':
        png = 'more';
        break;
      case 'Logout':
        png = 'logout';
        break;
      default:
        png = 'home';
        break;
    }

    final iconName = 'assets/images/$png.png';

    final width = 30.0;
    final height = 30.0;

    return Image.asset(iconName, width: width, height: height);
  }
}

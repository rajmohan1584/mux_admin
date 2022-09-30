import 'package:intl/intl.dart';

class FMT {
  static final qtyFormatter = NumberFormat("#,###");
  static final countFormatter = NumberFormat("#,###");

  static final priceFormatter = NumberFormat("#,##0.00");
  static final yieldFormatter = NumberFormat("#,##0.000");
  static final couponFormatter = NumberFormat("#,##0.000");

  static final shortDateFormat =  DateFormat('MM/dd/yy');

  static String qty(int i) {
    if (i == null) return '--';
    return qtyFormatter.format(i);
  }

  static String count(int i) {
    if (i == null) return '--';
    return countFormatter.format(i);
  }

  static String price(double d) {
    if (d == null) return '--';
    return priceFormatter.format(d);
  }

  static String eeld(double d) {
    if (d == null) return '--';
    return yieldFormatter.format(d);
  }

  static String spread(int i) {
    if (i == null) return '--';
    return qtyFormatter.format(i);
  }

  static String requestId(int id) {
    if (id == null) return '--';
    return id.toStringAsFixed(0);
  }

  static String coupon(double d) {
    if (d == null) return '--';
    return couponFormatter.format(d);
  }

  static String maturityDate(DateTime dt) {
    if (dt == null) return '--';
    return DateFormat.yMd().format(dt);
  }

  static String date(DateTime dt) {
    if (dt == null) return '--';
    return DateFormat.yMd().format(dt);
  }

  static String shortDate(DateTime dt) {
    if (dt == null) return '--';
    return shortDateFormat.format(dt);
  }
  
  static String time(DateTime dt) {
    if (dt == null) return '--';
    return DateFormat.Hm().format(dt);
  }

  static String yesNo(bool b) {
    if (b == null) return '--';
    if (b) return 'Yes';
    return 'No';
  }

  static String startCase(String s) {
    if (s == null) return '--';
    final words = s.split('_').map((w) {
      var uc = w.substring(0,1).toUpperCase();
      if (w.length > 1) uc += w.substring(1);
      return uc;
    });
    return words.join(' ');
  }
}

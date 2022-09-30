import 'package:mux_admin/src/model/security.dart';
import 'package:mux_admin/src/utils/util.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/format.dart';

class Orders {
  final List<Order> _orders = [];

  List<Order> get orders => _orders;

  reload(j) {
    _orders.removeRange(0, _orders.length);
    for(int i=0; i<j.length; i++) {
      _orders.add(Order.fromJson(j[i]));
    }
  }
}
/*
    "clientId": "CLT0028",
   "dc": "Wasmer",
    "blotterStatus": "Wasmer",
    "orgType": "Buyside"
*/

class Order{
  String _orderId;
  String _dispOrderId;
  String _cusip;
  String _blotterStatus;
  String _side;
  String _tif;
  double _price;
  double _yield;
  int _openQty;
  int _minQty;
  int _filledQty;

  Security _security;

  DateTime _updated;

  String get orderId => _orderId;
  String get dispOrderId => _dispOrderId;
  String get cusip => _cusip;
  String get blotterStatus => _blotterStatus;
  String get side => _side;
  String get tif => _tif;

  double get price => _price;
  double get eeld => _yield;
  int get openQty => _openQty;
  int get minQty => _minQty;
  int get filledQty => _filledQty;

  String get priceStr => FMT.price(_price);
  String get yieldStr => FMT.eeld(_yield);
  String get openQtyStr => FMT.qty(_openQty);
  String get minQtyStr => FMT.qty(_minQty);
  String get filledQtyStr => FMT.qty(_filledQty);

  DateTime get updated => _updated;

  Security get security => _security;

  String get updatedDateStr => FMT.date(_updated);
  String get updatedTimeStr => FMT.time(_updated);
  String get updatedDateShortStr => FMT.shortDate(_updated);

  static Order fromJson(j) {
    Order order = Order();
    order._orderId = JSON.parseString(j, 'orderId');
    order._dispOrderId = UTIL.displayEntityId(order._orderId);
    order._cusip = JSON.parseString(j['securityInfo'], 'cusip');
    order._blotterStatus = JSON.parseString(j, 'blotterStatus');
    order._side = JSON.parseString(j, 'side');
    order._tif = JSON.parseString(j, 'timeInForce');
    order._price = JSON.parseDouble(j, 'price');
    order._yield = JSON.parseDouble(j, 'yield');
    order._openQty = JSON.parseInt(j, 'openQty');
    order._minQty = JSON.parseInt(j, 'minQty');
    order._filledQty = JSON.parseInt(j, 'filledQty');
    order._updated = JSON.parseDate(j, 'updated');

    order._security = Security.fromJson(j['securityInfo']);

    return order;
  }
}
import 'package:mux_admin/src/model/security.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/format.dart';

class Offers {
  final List<Offer> _offers = [];

  List<Offer> get offers => _offers;

  reload(j) {
    _offers.removeRange(0, _offers.length);
    for(int i=0; i<j.length; i++) {
      _offers.add(Offer.fromJson(j[i]));
    }
  }
}
/*
        "actorId": "ACR000086",
        "actorName": "Treas",
        "approvedIssuer": false,
        "askAcceptMoreQuantity": false,
        "askAvailableQty": 10.0,
        "askCalcStatus": 0,
        "askGivenItype": 1,
        "askMinQuantity": 10.0,
        "askPrice": 102.728,
        "askQuantity": 10.0,
        "askSpread": 193.0,
        "askYield": 3.236952436584,
        "bestAskPrice": 102.728,
        "bestBidPrice": 102.142,
        "bidAcceptMoreQuantity": false,
        "bidCalcStatus": 0,
        "bidGivenItype": 1,
        "bidMinQuantity": 5.0,
        "bidPrice": 102.142,
        "bidQuantity": 5.0,
        "bidYield": 3.292792613982,
        "bondType": "T",
        "calcStatus": 0,
        "callable": false,
        "callableInd": "\u0000",
        "cepAskPrice": 102.525,
        "cepAskYield": 3.234570514,
        "cepBidPrice": 102.1796,
        "cepBidYield": 3.270411467,
        "coupon": 3.5,
        "couponType": 8,
        "currencyCode": "USD",
        "cusip": "Y7177RAL9",
        "displayName": "Note/3.5@32",
        "evaluatedPrice": 102.2452,
        "federalTaxStatus": 3,
        "hasAsk": true,
        "hasBid": true,
        "initiated": "2020-03-06T15:46:42.703Z",
        "insured": false,
        "investmentGrade": false,
        "isin": "XS1678625515",
        "issuerCode": "03BUW",
        "maturityDate": "2032-12-01",
        "issueDate": "2017-09-01",
        "requestId": 1643893,
        "requestType": "Offering",
        "requestXdata": "{\"pricingNo\":987,\"bookId\":999999064}",
        "requestXref": "Y7177RAL9:999999064",
        "securityKey": "000057BCEA76215D",
        "received": "2020-03-06T15:46:42.702Z"
*/

class OfferSide {
  int _qty;
  int _minQty;
  double _price;
  double _yield;
  int _spread;

  int get qty => _qty;
  int get minQty => _minQty;
  double get price => _price;
  double get eeld => _yield;
  int get spread => _spread;

  String get qtyStr => FMT.qty(_qty);
  String get minQtyStr => FMT.qty(_minQty);
  String get priceStr => FMT.price(_price);
  String get yieldldStr => FMT.eeld(_yield);
  String get spreadStr => FMT.spread(_spread);

  static OfferSide fromJson(j, side) {
    OfferSide offerSide = OfferSide();

    offerSide._qty = JSON.parseInt(j, '${side}Quantity');
    offerSide._minQty = JSON.parseInt(j, '${side}MinQuantity');
    offerSide._price = JSON.parseDouble(j, '${side}Price');
    offerSide._yield = JSON.parseDouble(j, '${side}Yield');
    offerSide._spread = JSON.parseInt(j, '${side}Spread');

    return offerSide;
  }
}

class Offer{
  int _requestId;

  bool _hasAsk;
  bool _hasBid;

  String _cusip;
  String _displayName;
  DateTime _received;

  Security _security;

  OfferSide _bid;
  OfferSide _ask;

  int get requestId => _requestId;
  String get dispRequestId => FMT.requestId(_requestId);

  bool get hasAsk => _hasAsk;
  bool get hasBid => _hasBid;
  
  String get cusip => _cusip;
  String get displayName => _displayName;
  DateTime get received => _received;

  Security get security => _security;

  OfferSide get bid => _bid;
  OfferSide get ask => _ask;

  String get receivedDateStr => FMT.date(_received);
  String get receivedTimeStr => FMT.time(_received);
  String get receivedDateShortStr => FMT.shortDate(_received);
  
  static Offer fromJson(j) {
    Offer offer = Offer();
    offer._requestId = JSON.parseInt(j, 'requestId');

    offer._hasAsk = JSON.parseBool(j, 'hasAsk');
    offer._hasBid = JSON.parseBool(j, 'hasBid');

    offer._cusip = JSON.parseString(j, 'cusip');
    offer._displayName = JSON.parseString(j, 'displayName');
    offer._received = JSON.parseDate(j, 'received');

    offer._security = Security.fromJson(j);

    offer._bid = OfferSide.fromJson(j, 'bid');
    offer._ask = OfferSide.fromJson(j, 'ask');

    /*
    String updated = j['updated'];
    if (updated != null && updated.isNotEmpty) {
      final dt = DateTime.parse(updated).toLocal();
      order._updatedDate = DateFormat.yMd().format(dt);
      order._updatedTime = DateFormat.Hm().format(dt);
    }
    */

    return offer;
  }
}
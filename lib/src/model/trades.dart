import 'package:mux_admin/src/model/security.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/format.dart';
import 'package:mux_admin/src/utils/util.dart';

class Trades {
  final List<Trade> _trades = [];

  List<Trade> get trades => _trades;

  reload(j) {
    _trades.removeRange(0, _trades.length);
    for(int i=0; i<j.length; i++) {
      _trades.add(Trade.fromJson(j[i]));
    }
  }
}

/*
{
  "accountId": "DEFAULT",
  "accountType": "Dealer",
  "acknowledged": false,
  "acl": {
    "read": {
      "include": {
        "groupId": [
          "EVERYONE"
        ],
        "actorId": "WBR054676"
      }
    },
    "acknowledge": {
      "include": {
        "actorId": "WBR054676"
      }
    },
    "allocate": {}
  },
  "actorId": "WBR054676",
  "allocated": false,
  "bondType": "C",
  "clientId": "CLT3129",
  "contraAccountId": "*REMOTE*",
  "contraAccountType": "Dealer",
  "contraClientId": "TNBTADMIN",
  "contraPrice": 100.902525100464,
  "contraRequestType": "Order",
  "correlationId": "313b267e-9077-43e6-b3a3-ac1c5e12fcac-muxadmin",
  "counterParty": "Admnstrt",
  "countered": false,
  "created": "2020-05-05T19:39:07.947Z",
  "currencyCode": "USD",
  "cusip": "037833BY5",
  "eventId": "22b67d98-7651-4522-9c01-8f960dc05b75",
  "interest": 66.8,
  "isin": "US037833BY53",
  "issueDate": "2016-02-23",
  "maturityDate": "2026-02-23",
  "mtz": "EasternUS",
  "netMoney": 10157.04,
  "notifications": [],
  "orderId": "remote-O#000000000019",
  "price": 100.902525100464,
  "principal": 10090.25,
  "quantity": 10,
  "requestId": 139434,
  "requestType": "Offering",
  "requestXdata": "requestId=139434;requestType=Offering;connectionId=CONN000036",
  "requestXref": "037833BY5",
  "retentionDate": "2020-05-19T19:39:07.617Z",
  "securities": {
    "CALC": {
      "accrual_date": "2016-02-23",
      "business_day_convention_code": 5,
      "call_schedule": [
        {
          "d": "20251123",
          "p": 100
        }
      ],
      "callable_ind": "Y",
      "coupon": 3.25,
      "coupon_inflation_protected_ind": "N",
      "coupon_type_code": 8,
      "cusip": "037833BY5",
      "day_count_code": 1,
      "days_notice": 30,
      "eom_adj_ind": "N",
      "first_coupon_date": "2016-08-23",
      "first_settlement_date": "2016-02-23",
      "frequency_code": 2,
      "isin": "US037833BY53",
      "issue_date": "2016-02-23",
      "issuer_name": "Apple Inc.",
      "last_accrual_date": "2025-08-23",
      "last_coupon_period_type": 2,
      "market_code": 4,
      "maturity_date": "2026-02-23",
      "maturity_price": 100,
      "metadata": {
        "apexBucketNameKey": "Refresh-2020-04-23-Take-2-2020-04-23T18:39",
        "apexId": 87674208,
        "apexUpdate": "2020-04-23T19:20:18.394Z",
        "derivedCurrencyCode": false,
        "refreshUpdate": "2020-04-23T19:20:18.394Z",
        "sequence": 6
      },
      "model_code": 1,
      "original_coupon": 3.25,
      "outstanding_amount": 3250000000,
      "price_to_currency": 10,
      "put_schedule": [],
      "security_key": "0000003A65F8923D",
      "sink_schedule": [],
      "step_schedule": [],
      "taxable": true
    },
    "DISPLAY": {
      "bondStatus": 1,
      "callableInd": true,
      "coupon": 3.25,
      "couponType": 8,
      "cusip": "037833BY5",
      "daysNotice": 30,
      "effectiveRedemption": {
        "date": "2026-02-23",
        "price": 100,
        "type": 5
      },
      "firstSettlementDate": "2016-02-23",
      "history": [
        {
          "eventType": 6,
          "queueTime": "2019-09-21T17:45:03.238Z",
          "newValue": "Aa1",
          "agency": "moodys",
          "property": "moodysDisplayLtText"
        }
      ],
      "isin": "US037833BY53",
      "metadata": {
        "apexBucketNameKey": "Refresh-2020-04-23-Take-2-2020-04-23T18:39",
        "apexId": 87674208,
        "apexUpdate": "2020-04-23T19:20:18.396Z",
        "moodysBucketNameKey": "refresh-2019-09-21T16:23:33.132577Z",
        "moodysId": 824936594,
        "moodysUpdate": "2019-09-21T17:45:03.238Z",
        "refreshUpdate": "2020-04-23T19:20:18.396Z",
        "sanitizeUpdate": "2019-09-25T17:49:30.641Z",
        "sequence": 6
      },
      "moodysDisplayLtRank": 2,
      "moodysDisplayLtText": "Aa1",
      "redemptionSchedule": [],
      "securityKey": "0000003A65F8923D",
      "warningsText": [
        {
          "code": 1,
          "description": "Callable"
        }
      ]
    },
    "SEARCH": {
      "accrualDate": "2016-02-23",
      "bondStatus": 1,
      "bondType": "C",
      "calculable": true,
      "callSchedule": [
        {
          "date": "2025-11-23",
          "price": 100
        }
      ],
      "callableCondInd": false,
      "callableContinuouslyInd": true,
      "callableInd": true,
      "cepBenchmarkId": "912828ZL7",
      "cepBenchmarkName": "5 Years",
      "coupon": 3.25,
      "couponType": 8,
      "currencyCode": "USD",
      "cusip": "037833BY5",
      "debtRankType": 10,
      "defaultInd": false,
      "denomIncrementAmount": 1000,
      "displayName": "AAPL/3.25@26",
      "durationBasis": "EP",
      "effectiveLtRank": 2,
      "effectiveLtText": "Aa1",
      "effectiveMaturity": "2026-02-23",
      "effectiveRedemption": {
        "date": "2026-02-23",
        "price": 100,
        "type": 5
      },
      "evaluatedPrice": 110.7487111,
      "federalTaxStatus": 3,
      "firstCallDate": "2025-11-23",
      "firstCallPrice": 100,
      "firstCallYear": 2025,
      "firstCouponDate": "2016-08-23",
      "firstSettlementDate": "2016-02-23",
      "industryGroup": 33,
      "industrySubGroup": 334,
      "insurance": [],
      "insured": false,
      "isin": "US037833BY53",
      "issuanceCode": "D06",
      "issueCode": "D0603930",
      "issueDate": "2016-02-23",
      "issueName": "3.25% SNR PIDI NTS 23/02/2026 USD (SEC REGD)",
      "issuerCode": "03930",
      "issuerName": "Apple Inc.",
      "lastAccrualDate": "2025-08-23",
      "lookBackTime": "2019-09-21T17:45:03.240Z",
      "macaulayDuration": 5.116,
      "maturityDate": "2026-02-23",
      "metadata": {
        "apexBucketNameKey": "Refresh-2020-04-23-Take-2-2020-04-23T18:39",
        "apexId": 87674208,
        "apexUpdate": "2020-04-23T19:20:18.394Z",
        "derivedCurrencyCode": false,
        "durationBucketNameKey": "quartz-2020-05-05T08:00",
        "durationCalculable": true,
        "durationUpdate": "2020-05-05T08:03:12.702Z",
        "moodysBucketNameKey": "refresh-2019-09-21T16:23:33.132577Z",
        "moodysId": 824936594,
        "moodysUpdate": "2019-09-21T17:45:03.240Z",
        "organizationIdSource": "APEX-ID",
        "refreshUpdate": "2020-04-23T19:20:18.394Z",
        "sequence": 4845
      },
      "minDenomAmount": 2000,
      "modifiedDuration": 5.082,
      "moodysDisplayLtRank": 2,
      "moodysDisplayLtText": "Aa1",
      "naicsClassification": [
        334220,
        423430
      ],
      "originalCoupon": 3.25,
      "outstandingAmount": 3250000000,
      "parPrice": 100,
      "parRatio": 10,
      "parValue": 1000,
      "paymentFrequency": 2,
      "paymentMonths": [
        "FEB",
        "AUG"
      ],
      "putCondInd": false,
      "putSchedule": [],
      "ratings": {
        "effective": {
          "ltRank": 2,
          "ltText": "Aa1"
        },
        "moodys": {
          "displayLtRank": 2,
          "displayLtText": "Aa1",
          "ltDate": "2016-04-27T12:04:18Z",
          "ltRank": 2,
          "ltText": "Aa1"
        }
      },
      "redemptionSchedule": [],
      "securityKey": "0000003A65F8923D",
      "securityName": "AAPL",
      "sicClassification": [
        "3571"
      ],
      "sinkSchedule": [],
      "stepSchedule": [],
      "strip": false,
      "subjectToAmt": false,
      "taxable": true,
      "term": 5.804,
      "text": {
        "bondType": "corporate corp",
        "coupon": "3.25",
        "couponType": "Fixed rate",
        "cusip5": "03783",
        "cusip6": "037833",
        "cusip7": "037833B",
        "cusip8": "037833BY",
        "debtRankType": "Senior",
        "federalTaxStatus": "Taxable",
        "isin10": "US037833BY",
        "issueDate": "2016-02-23",
        "maturityDate": "2026-02-23",
        "maturityYear": "2026",
        "maturityYearStr": "2026 26",
        "moodysDisplayLtText": "Aa1",
        "moodysGroup": "Aa",
        "naicsClassification": "334220 Radio and Television Broadcasting and Wireless Communications Equipment Manufacturing 423430 Computer and Computer Peripheral Equipment and Software Merchant Wholesalers",
        "other": "call callable investmentgrade",
        "paymentFrequency": "Semi Annually",
        "paymentMonths": "FEB February AUG August",
        "sicClassification": "3571 ELECTRONIC COMPUTERS"
      },
      "ticker": "AAPL",
      "trade": {
        "lastDaySummary": {
          "buy": {
            "highPrice": 110.768997192383,
            "highYield": 1.334175944328,
            "lowPrice": 110.206001281738,
            "lowYield": 1.234472990036,
            "numTrades": 11,
            "totalQty": 50
          },
          "sell": {
            "highPrice": 111.160003662109,
            "highYield": 1.224411010742,
            "lowPrice": 110.825996398926,
            "lowYield": 1.16557097435,
            "numTrades": 11,
            "totalQty": 693
          }
        },
        "lastPrice": 110.297996520996,
        "lastQuantity": 4,
        "lastSide": "B",
        "lastTradeDateTime": "2020-05-05T19:33:51Z",
        "lastYield": 1.317844033241,
        "source": "TRACE",
        "tradeCount10Day": 194
      },
      "warningTextInd": true,
      "warnings": [
        1
      ]
    }
  },
  "securityKey": "0000003A65F8923D",
  "settlementDate": "2020-05-07",
  "side": "sell",
  "solId": "S#000000000025",
  "tradeDate": "2020-05-05",
  "tradeId": "TR#000000000019",
  "tradeType": "BLOCK",
  "tradingFee": 5.045125,
  "transactTime": "2020-05-05T19:39:07.276Z",
  "yield": 3.071646137605,
  "yieldRedemptionDate": "2025-11-23",
  "yieldRedemptionPrice": 100
}
*/

class Trade{
  String _tradeId;
  String _displayTradeId;
  DateTime _created;
  String _side;

  String _cusip;
  String _displayName;
  Security _security;

  String _tradeDate;
  String _settleDate;

  int _qty;
  double _price;
  double _yield;
  int _spread;

  double _principal;
  double _netMoney;

  //String _contraRequestType;
  //String _requestType;

  String get tradeId => _tradeId;
  String get displayTradeId => _displayTradeId;
  DateTime get created => _created;
  String get side => _side;

  String get createdDateStr => FMT.date(_created);
  String get createdTimeStr => FMT.time(_created);
  String get createdDateShortStr => FMT.shortDate(_created);

  String get cusip => _cusip;
  String get displayName => _displayName;
  Security get security => _security;

  String get tradeDate => _tradeDate;
  String get settleDate => _settleDate;

  int get qty => _qty;
  double get price => _price;
  double get eeld => _yield;
  int get spread => _spread;
  double get principal => _principal;
  double get netMoney => _netMoney;

  String get qtyStr => FMT.qty(_qty);
  String get priceStr => FMT.price(_price);
  String get yieldldStr => FMT.eeld(_yield);
  String get spreadStr => FMT.spread(_spread);

  String get principalStr => FMT.price(_principal);
  String get netMoneyStr => FMT.price(_netMoney);

  static Trade fromJson(j) {
    Trade trade = Trade();
    trade._tradeId = JSON.parseString(j, 'tradeId');
    trade._displayTradeId = UTIL.displayEntityId(trade._tradeId);
    trade._created = JSON.parseDate(j, 'created');
    trade._side = JSON.parseString(j, 'side');

    trade._cusip = JSON.parseString(j, 'cusip');
    trade._displayName = JSON.parseString(j, 'displayName');
    trade._security = Security.fromJson(j);

    trade._tradeDate = JSON.parseString(j, 'tradeDate');
    trade._settleDate = JSON.parseString(j, 'settlementDate');

    trade._qty = JSON.parseInt(j, 'quantity');
    trade._price = JSON.parseDouble(j, 'price');
    trade._yield = JSON.parseDouble(j, 'yield');
    trade._spread = JSON.parseInt(j, 'ypread');

    trade._principal = JSON.parseDouble(j, 'principal');
    trade._netMoney = JSON.parseDouble(j, 'netMoney');

    return trade;
  }
}

import 'package:mux_admin/src/model/security.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/format.dart';
import 'package:mux_admin/src/utils/util.dart';

/*
{
  "_id": "S#000000000028",
  "locked": false,
  "created": "2020-05-11T16:18:03.394Z",
  "lockId": "N/A",
  "entityType": "Solicitation",
  "gatewayResponses": {
    "route": [
      {
        "actorId": "muxadmin",
        "callbackId": "10_0_1_89_23183",
        "messageId": "f4874135-4a0e-49ab-b754-f3f9fdc7e3d6",
        "statusCode": 200,
        "transmissionId": "f95c13c2-aaaf-4208-8d03-bcec5babece0",
        "type": "Zookeeper"
      }
    ],
    "confirm": true
  },
  "detail": [
    {
      "action": "Route",
      "ts": "2020-05-11T16:18:03.394Z",
      "actionBy": "System",
      "blotterStatus": "Routed"
    },
    {
      "action": "Confirm",
      "ts": "2020-05-11T16:18:09.208Z",
      "actionBy": "WBR054676 (Strickland)",
      "executionQty": 20,
      "executionPrice": 100.911170868458,
      "blotterStatus": "Filled"
    }
  ],
  "blotterStatus": "Filled",
  "execution": {
    "correlationId": "b78ef10b-2dae-41e7-a386-7cc167caea94",
    "triggerType": "HitLift",
    "triggerId": "S#000000000020",
    "timestamp": "2020-05-11T16:18:03.198Z",
    "eventId": "GE-5901000a-2500-199c7494-c",
    "solId": "S#000000000028",
    "clientDisplayName": "Wells Fargo",
    "securityKey": "0000003A65F8923D",
    "cusip": "037833BY5",
    "isin": "US037833BY53",
    "bondType": "C",
    "issueDate": "2016-02-23",
    "maturityDate": "2026-02-23",
    "lastPrice": 100.911170868458,
    "lastQuantity": 250,
    "executionPrice": 100.911170868458,
    "executionYield": 3.06944,
    "yieldRedemptionPrice": 100,
    "yieldRedemptionDate": 20251123,
    "accruedInterest": 7.222222222222,
    "tradeDate": 20200511,
    "minExecutionQuantity": 1,
    "maxExecutionQuantity": 20,
    "maxTotalExecutionQuantity": 20,
    "settlementDate": 20200513,
    "currencyCode": "USD",
    "executionPriceType": "PRICE",
    "mtz": "EasternUS",
    "priceToCurrency": 10,
    "contraActorId": "ACR000008",
    "remoteSolId": "RS#00000000028",
    "remote": true,
    "_sides": [
      {
        "side": "buy",
        "requestType": "Order",
        "solRouteId": "muxadmin",
        "accountType": "Dealer",
        "counterParty": "Wells Fargo",
        "contraClientId": "CLT3129",
        "contraAccountId": "ACC000004",
        "contraAccountType": "Customer",
        "contraPrice": 100.911170868458,
        "pullbackSeconds": 300,
        "execSide": "Aggressor",
        "lastUpdated": "2020-05-11T16:15:06.687Z",
        "accountId": "*REMOTE*",
        "orderId": "remote-O#000000000021",
        "clientId": "TNBTADMIN"
      },
      {
        "remoteSystem": "Rockefeller",
        "side": "Ask",
        "requestId": 139434,
        "requestXref": "037833BY5",
        "requestXdata": "requestId=139434;requestType=Offering;connectionId=CONN000036",
        "actorId": "WBR054676",
        "requestType": "Offering",
        "solRouteId": "muxadmin",
        "accountType": "Dealer",
        "clientId": "CLT3129",
        "counterParty": "Admnstrt",
        "contraClientId": "TNBTADMIN",
        "contraAccountId": "ACC000004",
        "contraAccountType": "Customer",
        "contraPrice": 100.911170868458,
        "pullbackSeconds": 303,
        "execSide": "Passive",
        "lastUpdated": "2020-05-11T16:15:06.687Z",
        "accountId": "DEFAULT",
        "orderId": "remote-O#000000000021",
        "actionExpireSeconds": 5
      }
    ]
  },
  "actorId": "WBR054676",
  "accountId": "DEFAULT",
  "accountType": "Dealer",
  "requestId": 139434,
  "requestXref": "037833BY5",
  "requestXdata": "requestId=139434;requestType=Offering;connectionId=CONN000036",
  "requestType": "Offering",
  "solRouteId": "muxadmin",
  "clientId": "CLT3129",
  "orderId": "remote-O#000000000021",
  "remoteSolId": "RS#00000000028",
  "solicitation": {
    "correlationId": "3c99adad-0c8e-4cc3-a152-2cfbb75ae4a4-muxadmin",
    "timestamp": "2020-05-11T16:18:03.198Z",
    "triggerId": "S#000000000020",
    "triggerType": "HitLift",
    "type": "HitLift",
    "remoteSystem": "Rockefeller",
    "remote": true,
    "side": "Ask",
    "requestId": 139434,
    "requestXref": "037833BY5",
    "requestXdata": "requestId=139434;requestType=Offering;connectionId=CONN000036",
    "actorId": "WBR054676",
    "requestType": "Offering",
    "solRouteId": "muxadmin",
    "accountType": "Dealer",
    "clientId": "CLT3129",
    "clientDisplayName": "Wells Fargo",
    "securityKey": "0000003A65F8923D",
    "cusip": "037833BY5",
    "isin": "US037833BY53",
    "bondType": "C",
    "issueDate": "2016-02-23",
    "maturityDate": "2026-02-23",
    "segmentHandle": {
      "index": 0,
      "magic": 19821128,
      "key": "SEG1"
    },
    "lastPrice": 100.911170868458,
    "lastQuantity": 250,
    "executionPrice": 100.911170868458,
    "executionYield": 3.06944,
    "yieldRedemptionPrice": 100,
    "yieldRedemptionDate": 20251123,
    "accruedInterest": 7.222222222222,
    "tradeDate": 20200511,
    "minExecutionQuantity": 1,
    "maxExecutionQuantity": 20,
    "maxTotalExecutionQuantity": 20,
    "settlementDate": 20200513,
    "currencyCode": "USD",
    "executionPriceType": "PRICE",
    "mtz": "EasternUS",
    "priceToCurrency": 10,
    "counterParty": "Admnstrt",
    "contraActorId": "ACR000008",
    "contraClientId": "TNBTADMIN",
    "contraAccountId": "ACC000004",
    "contraAccountType": "Customer",
    "contraPrice": 100.911170868458,
    "pullbackSeconds": 303,
    "execSide": "Passive",
    "lastUpdated": "2020-05-11T16:15:06.687Z",
    "accountId": "DEFAULT",
    "orderId": "remote-O#000000000021",
    "solId": "S#000000000028",
    "remoteSolId": "RS#00000000028",
    "actionExpireSeconds": 5,
    "orderExecutionSide": {
      "side": "buy",
      "requestType": "Order",
      "solRouteId": "muxadmin",
      "accountType": "Dealer",
      "clientDisplayName": "Wells Fargo",
      "securityKey": "0000003A65F8923D",
      "cusip": "037833BY5",
      "isin": "US037833BY53",
      "bondType": "C",
      "issueDate": "2016-02-23",
      "maturityDate": "2026-02-23",
      "segmentHandle": {
        "index": 0,
        "magic": 19821128,
        "key": "SEG1"
      },
      "lastPrice": 100.911170868458,
      "lastQuantity": 250,
      "executionPrice": 100.911170868458,
      "executionYield": 3.06944,
      "yieldRedemptionPrice": 100,
      "yieldRedemptionDate": 20251123,
      "accruedInterest": 7.222222222222,
      "tradeDate": 20200511,
      "minExecutionQuantity": 1,
      "maxExecutionQuantity": 20,
      "maxTotalExecutionQuantity": 20,
      "settlementDate": 20200513,
      "currencyCode": "USD",
      "executionPriceType": "PRICE",
      "mtz": "EasternUS",
      "priceToCurrency": 10,
      "counterParty": "Wells Fargo",
      "contraActorId": "ACR000008",
      "contraClientId": "CLT3129",
      "contraAccountId": "ACC000004",
      "contraAccountType": "Customer",
      "contraPrice": 100.911170868458,
      "pullbackSeconds": 300,
      "execSide": "Passive",
      "lastUpdated": "2020-05-11T16:15:06.687Z",
      "accountId": "*REMOTE*",
      "orderId": "remote-O#000000000021",
      "clientId": "TNBTADMIN",
      "remoteSolId": "RS#00000000028",
      "remote": true,
      "executionQuantity": 20
    },
    "eventId": "GE-5901000a-2500-199c7494-c",
    "actBy": "2020-05-11T16:23:06.394Z",
    "actionable": true,
    "blotterStatus": "Routed",
    "executionQuantity": 20
  },
  "solId": "S#000000000028",
  "triggerId": "S#000000000020",
  "maxQty": 0,
  "minQty": 1,
  "segmentHandle": {
    "index": 0,
    "magic": 19821128,
    "key": "SEG1"
  },
  "createdCorrId": "b78ef10b-2dae-41e7-a386-7cc167caea94",
  "side": "Ask",
  "correlationId": "3c99adad-0c8e-4cc3-a152-2cfbb75ae4a4-muxadmin",
  "remote": true,
  "remoteSystem": "Rockefeller",
  "guaranteed": true,
  "order": {
    "side": "buy",
    "requestType": "Order",
    "solRouteId": "muxadmin",
    "accountType": "Dealer",
    "clientDisplayName": "Wells Fargo",
    "securityKey": "0000003A65F8923D",
    "cusip": "037833BY5",
    "isin": "US037833BY53",
    "bondType": "C",
    "issueDate": "2016-02-23",
    "maturityDate": "2026-02-23",
    "segmentHandle": {
      "index": 0,
      "magic": 19821128,
      "key": "SEG1"
    },
    "lastPrice": 100.911170868458,
    "lastQuantity": 250,
    "executionPrice": 100.911170868458,
    "executionYield": 3.06944,
    "yieldRedemptionPrice": 100,
    "yieldRedemptionDate": 20251123,
    "accruedInterest": 7.222222222222,
    "tradeDate": 20200511,
    "minExecutionQuantity": 1,
    "maxExecutionQuantity": 20,
    "maxTotalExecutionQuantity": 20,
    "settlementDate": 20200513,
    "currencyCode": "USD",
    "executionPriceType": "PRICE",
    "mtz": "EasternUS",
    "priceToCurrency": 10,
    "counterParty": "Wells Fargo",
    "contraActorId": "ACR000008",
    "contraClientId": "CLT3129",
    "contraAccountId": "ACC000004",
    "contraAccountType": "Customer",
    "contraPrice": 100.911170868458,
    "pullbackSeconds": 300,
    "execSide": "Passive",
    "lastUpdated": "2020-05-11T16:15:06.687Z",
    "accountId": "*REMOTE*",
    "orderId": "remote-O#000000000021",
    "clientId": "TNBTADMIN",
    "remoteSolId": "RS#00000000028",
    "remote": true,
    "executionQuantity": 20
  },
  "pullbackSeconds": 303,
  "actionExpireSeconds": 5,
  "actBy": "2020-05-11T16:23:06.394Z",
  "pullbackCorrId": "b78ef10b-2dae-41e7-a386-7cc167caea94+302s",
  "currentState": "COMPLETE",
  "eventSeqno": 2,
  "lastEventDt": "2020-05-11T16:18:09.211Z",
  "trades": [
    "TR#000000000020"
  ],
  "log": [
    {
      "ApplyEvent": {
        "ts": "2020-05-11T16:18:03.966Z",
        "from": "CREATED",
        "to": "ROUTED",
        "event": {
          "RouteSolicitation": {
            "correlationId": "b78ef10b-2dae-41e7-a386-7cc167caea94",
            "timestamp": "2020-05-11T16:18:03.198Z",
            "triggerId": "S#000000000020",
            "triggerType": "HitLift",
            "type": "HitLift",
            "remoteSystem": "Rockefeller",
            "remote": true,
            "side": "Ask",
            "requestId": 139434,
            "requestXref": "037833BY5",
            "requestXdata": "requestId=139434;requestType=Offering;connectionId=CONN000036",
            "actorId": "WBR054676",
            "requestType": "Offering",
            "solRouteId": "muxadmin",
            "accountType": "Dealer",
            "clientId": "CLT3129",
            "clientDisplayName": "Wells Fargo",
            "securityKey": "0000003A65F8923D",
            "cusip": "037833BY5",
            "isin": "US037833BY53",
            "bondType": "C",
            "issueDate": "2016-02-23",
            "maturityDate": "2026-02-23",
            "segmentHandle": {
              "index": 0,
              "magic": 19821128,
              "key": "SEG1"
            },
            "lastPrice": 100.911170868458,
            "lastQuantity": 250,
            "executionPrice": 100.911170868458,
            "executionYield": 3.06944,
            "yieldRedemptionPrice": 100,
            "yieldRedemptionDate": 20251123,
            "accruedInterest": 7.222222222222,
            "tradeDate": 20200511,
            "minExecutionQuantity": 1,
            "maxExecutionQuantity": 20,
            "maxTotalExecutionQuantity": 20,
            "settlementDate": 20200513,
            "currencyCode": "USD",
            "executionPriceType": "PRICE",
            "mtz": "EasternUS",
            "priceToCurrency": 10,
            "counterParty": "Admnstrt",
            "contraActorId": "ACR000008",
            "contraClientId": "TNBTADMIN",
            "contraAccountId": "ACC000004",
            "contraAccountType": "Customer",
            "contraPrice": 100.911170868458,
            "pullbackSeconds": 303,
            "execSide": "Passive",
            "lastUpdated": "2020-05-11T16:15:06.687Z",
            "accountId": "DEFAULT",
            "orderId": "remote-O#000000000021",
            "solId": "S#000000000028",
            "remoteSolId": "RS#00000000028",
            "actionExpireSeconds": 5,
            "orderExecutionSide": {
              "side": "buy",
              "requestType": "Order",
              "solRouteId": "muxadmin",
              "accountType": "Dealer",
              "clientDisplayName": "Wells Fargo",
              "securityKey": "0000003A65F8923D",
              "cusip": "037833BY5",
              "isin": "US037833BY53",
              "bondType": "C",
              "issueDate": "2016-02-23",
              "maturityDate": "2026-02-23",
              "segmentHandle": {
                "index": 0,
                "magic": 19821128,
                "key": "SEG1"
              },
              "lastPrice": 100.911170868458,
              "lastQuantity": 250,
              "executionPrice": 100.911170868458,
              "executionYield": 3.06944,
              "yieldRedemptionPrice": 100,
              "yieldRedemptionDate": 20251123,
              "accruedInterest": 7.222222222222,
              "tradeDate": 20200511,
              "minExecutionQuantity": 1,
              "maxExecutionQuantity": 20,
              "maxTotalExecutionQuantity": 20,
              "settlementDate": 20200513,
              "currencyCode": "USD",
              "executionPriceType": "PRICE",
              "mtz": "EasternUS",
              "priceToCurrency": 10,
              "counterParty": "Wells Fargo",
              "contraActorId": "ACR000008",
              "contraClientId": "CLT3129",
              "contraAccountId": "ACC000004",
              "contraAccountType": "Customer",
              "contraPrice": 100.911170868458,
              "pullbackSeconds": 300,
              "execSide": "Passive",
              "lastUpdated": "2020-05-11T16:15:06.687Z",
              "accountId": "*REMOTE*",
              "orderId": "remote-O#000000000021",
              "clientId": "TNBTADMIN",
              "remoteSolId": "RS#00000000028",
              "remote": true
            },
            "eventId": "GE-5901000a-2500-199c7494-c"
          }
        },
        "accepted": true,
        "seconds": 0.584689,
        "correlationId": "b78ef10b-2dae-41e7-a386-7cc167caea94",
        "futures": [
          {
            "entityType": "Solicitation",
            "entityId": "S#000000000028",
            "eventName": "PullbackSolicitation",
            "delay": 302.449,
            "sessionId": "N/A",
            "origin": {
              "source": "Solicitation_HitLift.js",
              "line": 452,
              "entityType": "Solicitation",
              "entityId": "S#000000000028"
            },
            "handle": "Mongo(5eb97abb7ee18b7e9201e03e)"
          }
        ]
      }
    },
    {
      "ApplyEvent": {
        "ts": "2020-05-11T16:18:09.210Z",
        "from": "ROUTED",
        "to": "COMPLETE",
        "event": {
          "MarketActionReceived": {
            "side": "sell",
            "more": false,
            "actionType": "Fill",
            "solId": "S#000000000028",
            "requestId": 139434,
            "executionPrice": 100.911170868458,
            "executionQuantity": 20,
            "sender": {
              "app": "muxadmin"
            },
            "eventId": "GE-5901000a-2500-19ef0503-d"
          }
        },
        "accepted": true,
        "seconds": 0.429372,
        "correlationId": "3c99adad-0c8e-4cc3-a152-2cfbb75ae4a4-muxadmin",
        "futures": [
          {
            "entityType": "RemoteSolicitation",
            "entityId": "RS#00000000028",
            "eventName": "MarketActionReceived",
            "delay": 0,
            "sessionId": "12527f2115ab941b8676cb51b820e9d7b71c6b0a",
            "origin": {
              "source": "Solicitation_HitLift.js",
              "line": 717,
              "entityType": "Solicitation",
              "entityId": "S#000000000028"
            },
            "handle": "TLS(13)"
          }
        ],
        "output": {
          "executionPrincipal": 20182.23,
          "executionNetMoney": 20326.66,
          "executionInterest": 144.44
        }
      }
    }
  ]
}
*/

class Solicitation {
  String _solId = "";
  String _displaySolId = "";
  DateTime _created = DateTime.now();
  String _side = "";

  String _blotterStatus = "";
  String _currentState = "";

  String _cusip = "";
  String _bondType = "";
  String _bondTypeDesc = "";
  String _remoteSystem = "";

  DateTime _tradeDate = DateTime.now();
  DateTime _settleDate = DateTime.now();

  int _qty = -1;
  double _price = -1;
  double _yield = -1;
  int _spread = -1;

  double _accruedInterest = -1;

  String get solId => _solId;
  String get displaySolId => _displaySolId;
  DateTime get created => _created;
  String get side => _side;
  String get blotterStatus => _blotterStatus;
  String get currentState => _currentState;

  String get createdDateStr => FMT.date(_created);
  String get createdTimeStr => FMT.time(_created);
  String get createdDateShortStr => FMT.shortDate(_created);

  String get cusip => _cusip;
  String get bondType => _bondType;
  String get bondTypeDesc => _bondTypeDesc;
  String get remoteSystem => _remoteSystem;

  String get tradeDate => FMT.shortDate(_tradeDate);
  String get settleDate => FMT.shortDate(_settleDate);

  int get qty => _qty;
  double get price => _price;
  double get eeld => _yield;
  int get spread => _spread;
  double get accruedInterest => _accruedInterest;

  String get qtyStr => FMT.qty(_qty);
  String get priceStr => FMT.price(_price);
  String get yieldldStr => FMT.eeld(_yield);
  String get spreadStr => FMT.spread(_spread);

  String get accruedInterestStr => FMT.eeld(_accruedInterest);
  static Solicitation fromJson(j) {
    Solicitation sol = Solicitation();
    sol._solId = JSON.parseString(j, 'solId');
    sol._displaySolId = UTIL.displayEntityId(sol._solId);
    sol._created = JSON.parseDate(j, 'created') ?? DateTime.now();
    sol._side = JSON.parseString(j, 'side');
    sol._blotterStatus = JSON.parseString(j, 'blotterStatus');
    if (sol._blotterStatus != null)
      sol._blotterStatus = sol._blotterStatus.toLowerCase();
    sol._currentState = JSON.parseString(j, 'currentState');

    final solicitation = j['solicitation'];
    sol._cusip = JSON.parseString(solicitation, 'cusip');
    sol._bondType = JSON.parseString(solicitation, 'bondType');
    sol._remoteSystem = JSON.parseString(solicitation, 'remoteSystem');
    sol._bondTypeDesc = UTIL.bondTypeDesc(sol._bondType) ?? "";

    sol._tradeDate = JSON.parseDate(j, 'tradeDate') ?? DateTime.now();
    sol._settleDate = JSON.parseDate(j, 'settlementDate') ?? DateTime.now();

    sol._qty = JSON.parseInt(solicitation, 'maxTotalExecutionQuantity') ?? -1;
    sol._price = JSON.parseDouble(solicitation, 'executionPrice') ?? -1;
    sol._yield = JSON.parseDouble(solicitation, 'executionYield') ?? -1;
    sol._spread = JSON.parseInt(solicitation, 'executionSpread') ?? -1;

    sol._accruedInterest =
        JSON.parseDouble(solicitation, 'accruedInterest') ?? -1;

    return sol;
  }
}

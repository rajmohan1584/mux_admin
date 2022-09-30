/*
    "securityInfo" : {
        "cusip" : "088350EJ8", 
        "isin" : "US088350EJ89", 
        "securityKey" : "00000096103ADA94", 
        "issuerCode" : "06BC1", 
        "issuanceCode" : "66N", 
        "bondType" : "M", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : NumberInt(17), 
        "coupon" : NumberInt(7), 
        "issueDate" : "1991-12-01", 
        "accrualDate" : "1991-12-01", 
        "maturityDate" : "2021-05-01", 
        "firstCallDate" : "2001-05-01", 
        "firstSettlementDate" : "1992-01-09", 
        "displayName" : "BEXAR CNTY TEX HEALTH FACS DEV CORP HOSP REV/7@21", 
        "state" : "TX", 
        "outstandingAmount" : NumberInt(5635000), 
        "paymentFrequency" : NumberInt(2), 
        "useOfProceeds" : NumberInt(28), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : NumberInt(1000), 
        "macaulayDuration" : 1.1679999828338623, 
        "evaluatedPrice" : 104.35805, 
        "term" : 1.2239999771118164, 
        "trade" : {
            "tradeCount10Day" : NumberInt(2), 
            "lastPrice" : 104.142, 
            "lastTradeDateTime" : "2020-01-27T17:59:13Z"
        }, 
        "priceToCurrency" : NumberInt(10), 
        "metadata" : {
            "sequence" : NumberInt(153)
        }, 
        "federalTaxStatus" : NumberInt(2), 
        "muni" : {
            "escrowedToMaturity" : true, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2021-05-01"
        }, 
        "warnings" : [
            NumberInt(1), 
            NumberInt(5)
        ]
    }, 
*/

import 'package:mux_admin/src/utils/format.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/util.dart';

class Security {
  String _cusip;
  String _bondType;
  String _displayName;
  double _coupon;
  DateTime _maturityDate;

  String _displayInfo;
  String _securityName;
  String _bondTypeDesc;

  String get cusip => _cusip;
  String get bondType => _bondType;
  String get displayName => _displayName;
  double get coupon => _coupon;
  DateTime get maturityDate => _maturityDate;

  String get displayInfo => _displayInfo;
  String get securityName => _securityName;
  String get bondTypeDesc => _bondTypeDesc;

  String get couponStr => FMT.coupon(_coupon);
  String get maturityDateStr => FMT.maturityDate(_maturityDate);
  
  static Security fromJson(j) {
    Security sec = Security();

    sec._cusip = JSON.parseString(j, 'cusip');
    sec._bondType = JSON.parseString(j, 'bondType');
    sec._displayName = JSON.parseString(j, 'displayName');
    sec._coupon = JSON.parseDouble(j, 'coupon');
    sec._maturityDate = JSON.parseDate(j, 'maturityDate');

    if (sec.displayName == null) {
      // Special handling for Trades
      if (j["securities"] !=null) {
        final securities = j["securities"];
        if (securities != null) {
          final search = securities["SEARCH"];
          sec._displayName = JSON.parseString(search, 'displayName');
          sec._coupon = JSON.parseDouble(search, 'coupon');
          //sec._maturityDate = JSON.parseTradeReportMaturityDate(search, 'maturityDate');
        }
      }
    }

    sec._securityName = UTIL.displayName2SecurityName(sec._displayName);
    sec._bondTypeDesc = UTIL.bondTypeDesc(sec._bondType);
    
    sec._displayInfo = '${sec.couponStr} @ ${sec.maturityDateStr}';
    return sec;
  }


}
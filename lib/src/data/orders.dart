int numberInt(int x) { return x; }
String isoDate(String x) { return x; }

var oRDERS = [{ 
    "_id" : "O#000000002357", 
    "locked" : false, 
    "actorId" : "WBR300001", 
    "requestXref" : "93b4490d-cf47-4e36-84bc-6752d37f646d", 
    "sessionId" : "1b804ea50fc6c8d67e5a3459d2d2ae7bff3f8518", 
    "created" : isoDate("2020-03-04T14:46:39.224-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : "WBR300001"
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-04T14:46:42.100-0500"), 
    "final" : true, 
    "accountId" : "ACC000007", 
    "securityInfo" : {
        "cusip" : "904764AW7", 
        "isin" : "US904764AW76", 
        "securityKey" : "00001719B21C9227", 
        "issuerCode" : "0397V", 
        "issuanceCode" : "DCB", 
        "bondType" : "C", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : true, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : 2.2, 
        "issueDate" : "2017-05-05", 
        "accrualDate" : "2017-05-05", 
        "maturityDate" : "2022-05-05", 
        "firstCallDate" : "2022-04-05", 
        "firstSettlementDate" : "2017-05-05", 
        "ticker" : "UNANA", 
        "displayName" : "UNANA/2.2@22", 
        "naicsClassification" : [
            "332994"
        ], 
        "sicClassification" : [
            "3489"
        ], 
        "outstandingAmount" : numberInt(850000000), 
        "paymentFrequency" : numberInt(2), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "ratings" : {
            "moodys" : {
                "enhLtRank" : numberInt(5)
            }, 
            "effective" : {
                "ltRank" : numberInt(5)
            }
        }, 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 2.174999952316284, 
        "evaluatedPrice" : 101.0490353, 
        "term" : 2.2339999675750732, 
        "trade" : {
            "tradeCount10Day" : numberInt(6), 
            "lastPrice" : 102.26000213623, 
            "lastTradeDateTime" : "2020-03-04T13:01:39Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(290)
        }, 
        "federalTaxStatus" : numberInt(3), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2022-05-05"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "904764AW7", 
    "isin" : "US904764AW76", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(20161), 
        "source" : "index.js", 
        "line" : numberInt(671)
    }, 
    "clientId" : "CLTFIDL", 
    "pullbackSeconds" : numberInt(300), 
    "filledQty" : numberInt(50), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(50), 
    "openQty" : numberInt(0), 
    "minQty" : numberInt(1), 
    "price" : 102.76443352226912, 
    "limitPrice" : numberInt(23), 
    "priceType" : "SPREAD", 
    "originalQty" : numberInt(50), 
    "originalPrice" : numberInt(23), 
    "originalPriceType" : "SPREAD", 
    "actorInfo" : {
        "actorId" : "WBR300001", 
        "displayName" : "Fidelity Portfolio Trader"
    }, 
    "timeInForce" : "GTC", 
    "principal" : numberInt(0), 
    "orderId" : "O#000000002357", 
    "blotterStatus" : "filled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(50), 
    "totalFilledAmount" : 5138.150000000001, 
    "MarketRequest" : {
        "actorId" : "WBR300001", 
        "requestId" : numberInt(730640935), 
        "requestType" : "Order", 
        "requestXref" : "93b4490d-cf47-4e36-84bc-6752d37f646d", 
        "cusip" : "904764AW7", 
        "isin" : "US904764AW76", 
        "accountId" : "ACC000007", 
        "timeInForce" : "GTC", 
        "orderId" : "O#000000002357", 
        "pullbackSeconds" : numberInt(300), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "1b804ea50fc6c8d67e5a3459d2d2ae7bff3f8518", 
                "actorId" : "WBR300001"
            }
        }, 
        "initiated" : isoDate("2020-03-04T14:46:41.728-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "904764AW7", 
        "isin" : "US904764AW76", 
        "securityKey" : "00001719B21C9227", 
        "requestXref" : "93b4490d-cf47-4e36-84bc-6752d37f646d", 
        "requestId" : numberInt(730640935), 
        "segHandle" : {
            "index" : numberInt(10), 
            "magic" : numberInt(43581080), 
            "key" : "SEG11"
        }, 
        "triggerCount" : numberInt(1), 
        "accountId" : "ACC000007", 
        "accountXref" : "ACCT-123", 
        "accountType" : "Block", 
        "clientId" : "CLTFIDL", 
        "bid" : {
            "price" : 102.76443352226912, 
            "yield" : 0.861483423, 
            "spread" : numberInt(23), 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200304), 
            "settlementDate" : numberInt(20200306)
        }
    }, 
    "requestId" : numberInt(730640935), 
    "accountType" : "Block", 
    "yield" : 0.861483423, 
    "spread" : numberInt(23), 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(1), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-04T14:46:39.407-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR300001", 
            "qty" : numberInt(50), 
            "minQty" : numberInt(1), 
            "priceType" : "SPREAD", 
            "price" : 102.76443352226912, 
            "yield" : 0.861483423, 
            "spread" : numberInt(23), 
            "actorInfo" : {
                "actorId" : "WBR300001", 
                "displayName" : "Fidelity Portfolio Trader"
            }
        }, 
        {
            "action" : "Filled", 
            "ts" : isoDate("2020-03-04T14:46:41.726-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "FXR000118", 
            "requestId" : numberInt(730589605), 
            "requestXref" : "US904764AW76:12553", 
            "executionPrice" : 102.763, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(0), 
            "settlementDate" : numberInt(20200306), 
            "actorInfo" : {
                "actorId" : "FXR000118", 
                "displayName" : "WSC_JPM_Offer(UAT)"
            }, 
            "avgFilledPrice" : 102.763, 
            "filledQty" : numberInt(50)
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(3), 
    "lastEventDt" : isoDate("2020-03-04T14:46:42.102-0500"), 
    "avgFilledPrice" : 102.763, 
    "trades" : [
        "TR#000000005273"
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:46:39.407Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "GTC", 
                        "securityKey" : "00001719B21C9227", 
                        "buy" : {
                            "value" : {
                                "givenType" : "SPREAD", 
                                "given" : numberInt(23), 
                                "settlementDate" : "2020-03-06"
                            }, 
                            "quantity" : numberInt(50), 
                            "minQuantity" : numberInt(1)
                        }, 
                        "pullbackSeconds" : numberInt(300), 
                        "requestXref" : "93b4490d-cf47-4e36-84bc-6752d37f646d", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(20161), 
                            "source" : "index.js", 
                            "line" : numberInt(671)
                        }, 
                        "eventId" : "GE-6101000a-4af1-4638d80a-6b"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.177751, 
                "correlationId" : "6427abfd-6374-44c7-a417-4265edc50865"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:46:39.604Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "6427abfd-6374-44c7-a417-4265edc50865", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200304-19:46:39.400-00:00", 
                        "triggerId" : "T#ri!ml-rjLIn", 
                        "eventId" : "GE-6101000a-4af1-463d0928-6d", 
                        "securityKey" : "00001719B21C9227", 
                        "cusip" : "904764AW7", 
                        "isin" : "US904764AW76", 
                        "bondType" : "C", 
                        "issueDate" : "2017-05-05", 
                        "maturityDate" : "2022-05-05", 
                        "executionPrice" : 102.763, 
                        "executionYield" : 0.857172655463, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20220405), 
                        "accruedInterest" : 7.394444444444, 
                        "tradeDate" : numberInt(20200304), 
                        "minExecutionQuantity" : numberInt(1), 
                        "maxExecutionQuantity" : numberInt(50), 
                        "maxTotalExecutionQuantity" : numberInt(50), 
                        "settlementDate" : numberInt(20200306), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 102.366728, 
                        "askEvalPrice" : 102.422997, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002357", 
                                "requestId" : numberInt(730640935), 
                                "requestXref" : "93b4490d-cf47-4e36-84bc-6752d37f646d", 
                                "actorId" : "WBR300001", 
                                "requestType" : "Order", 
                                "accountId" : "ACC000007", 
                                "accountXref" : "ACCT-123", 
                                "accountType" : "Block", 
                                "clientId" : "CLTFIDL", 
                                "clientDisplayName" : "Fidelity", 
                                "lastPrice" : 102.764433522269, 
                                "lastQuantity" : numberInt(50), 
                                "counterParty" : "JPMS", 
                                "contraActorId" : "FXR000118", 
                                "contraClientId" : "CLT0346", 
                                "contraAccountId" : "ACC002971", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 102.763, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-04T19:46:39.392Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "requestId" : numberInt(730589605), 
                                "requestXref" : "US904764AW76:12553", 
                                "requestXdata" : {
                                    "product" : "3", 
                                    "mdEntryID" : "12553"
                                }, 
                                "actorId" : "FXR000118", 
                                "requestType" : "Offering", 
                                "solRouteId" : "FXR000124", 
                                "accountId" : "ACC002971", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0346", 
                                "clientDisplayName" : "JPMS", 
                                "lastPrice" : 102.763, 
                                "lastQuantity" : numberInt(500), 
                                "counterParty" : "Fidelity", 
                                "contraActorId" : "WBR300001", 
                                "contraClientId" : "CLTFIDL", 
                                "contraAccountId" : "ACC000007", 
                                "contraAccountType" : "Block", 
                                "contraPrice" : 102.763, 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-04T19:46:02.473Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.102551, 
                "correlationId" : "6427abfd-6374-44c7-a417-4265edc50865", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003338", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002357"
                        }, 
                        "handle" : "Mongo(5e60059f4cc9c64af160bc23)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri!ml-rjLIn"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:46:42.101Z", 
                "from" : "EXECUTING", 
                "to" : "COMPLETE", 
                "event" : {
                    "MarketActionReceived" : {
                        "sender" : {
                            "app" : "quickway1", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "pid" : numberInt(20382), 
                            "env" : "DEMO"
                        }, 
                        "solId" : "S#000000003338", 
                        "actionType" : "Fill", 
                        "executionPrice" : 102.763, 
                        "actionXref" : "1000JPMD_1583351199726_DaB6tHWabckpj4zo", 
                        "leavesOmsQuantity" : numberInt(0), 
                        "more" : "N", 
                        "executionQuantity" : numberInt(50), 
                        "orderXref" : "100020200304044507-J66-O#000000002357:S#000000003338", 
                        "side" : "Ask", 
                        "eventId" : "GE-6101000a-4af1-46542791-70", 
                        "leavesSolQuantity" : numberInt(0), 
                        "correlationId" : "WASC_OE_UATJPM_OE_UAT000179320200304-19:46:39.731", 
                        "counterParty" : "JPMS", 
                        "requestId" : numberInt(730589605), 
                        "requestType" : "Offering", 
                        "requestXref" : "US904764AW76:12553", 
                        "requestXdata" : {
                            "product" : "3", 
                            "mdEntryID" : "12553"
                        }, 
                        "tradeId" : "TR#000000005272", 
                        "executionNetMoney" : 51751.22, 
                        "executionPrincipal" : 51381.5, 
                        "executionInterest" : 369.72, 
                        "offerExecutionSide" : {
                            "side" : "Ask", 
                            "requestId" : numberInt(730589605), 
                            "requestXref" : "US904764AW76:12553", 
                            "requestXdata" : {
                                "product" : "3", 
                                "mdEntryID" : "12553"
                            }, 
                            "actorId" : "FXR000118", 
                            "requestType" : "Offering", 
                            "solRouteId" : "FXR000124", 
                            "accountId" : "ACC002971", 
                            "accountType" : "Dealer", 
                            "clientId" : "CLT0346", 
                            "clientDisplayName" : "JPMS", 
                            "lastPrice" : 102.763, 
                            "lastQuantity" : numberInt(500), 
                            "counterParty" : "Fidelity", 
                            "contraActorId" : "WBR300001", 
                            "contraClientId" : "CLTFIDL", 
                            "contraAccountId" : "ACC000007", 
                            "contraAccountType" : "Block", 
                            "contraPrice" : 102.763, 
                            "execSide" : "Passive", 
                            "lastUpdated" : "2020-03-04T19:46:02.473Z", 
                            "securityKey" : "00001719B21C9227", 
                            "cusip" : "904764AW7", 
                            "isin" : "US904764AW76", 
                            "bondType" : "C", 
                            "issueDate" : "2017-05-05", 
                            "maturityDate" : "2022-05-05", 
                            "executionPrice" : 102.763, 
                            "executionYield" : 0.857172655463, 
                            "yieldRedemptionPrice" : numberInt(100), 
                            "yieldRedemptionDate" : numberInt(20220405), 
                            "accruedInterest" : 7.394444444444, 
                            "tradeDate" : numberInt(20200304), 
                            "minExecutionQuantity" : numberInt(1), 
                            "maxExecutionQuantity" : numberInt(50), 
                            "maxTotalExecutionQuantity" : numberInt(50), 
                            "settlementDate" : numberInt(20200306), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "mtz" : "EasternUS", 
                            "priceToCurrency" : numberInt(10), 
                            "bidEvalPrice" : 102.366728, 
                            "askEvalPrice" : 102.422997, 
                            "correlationId" : "WASC_OE_UATJPM_OE_UAT000179320200304-19:46:39.731", 
                            "triggerType" : "HitLift", 
                            "triggerId" : "T#ri!ml-rjLIn", 
                            "timestamp" : "20200304-19:46:39.400-00:00", 
                            "eventId" : "GE-6101000a-4af1-463e6e19-6e", 
                            "type" : "HitLift", 
                            "orderId" : "O#000000002357", 
                            "orderRequestId" : numberInt(730640935), 
                            "pullbackSeconds" : numberInt(300), 
                            "solId" : "S#000000003338", 
                            "actBy" : "2020-03-04T19:51:39.602Z", 
                            "actionable" : true, 
                            "executionQuantity" : numberInt(50)
                        }, 
                        "orderExecutionSide" : {
                            "side" : "Bid", 
                            "orderId" : "O#000000002357", 
                            "requestId" : numberInt(730640935), 
                            "requestXref" : "93b4490d-cf47-4e36-84bc-6752d37f646d", 
                            "actorId" : "WBR300001", 
                            "requestType" : "Order", 
                            "accountId" : "ACC000007", 
                            "accountXref" : "ACCT-123", 
                            "accountType" : "Block", 
                            "clientId" : "CLTFIDL", 
                            "clientDisplayName" : "Fidelity", 
                            "lastPrice" : 102.764433522269, 
                            "lastQuantity" : numberInt(50), 
                            "counterParty" : "JPMS", 
                            "contraActorId" : "FXR000118", 
                            "contraClientId" : "CLT0346", 
                            "contraAccountId" : "ACC002971", 
                            "contraAccountType" : "Dealer", 
                            "contraPrice" : 102.763, 
                            "execSide" : "Aggressor", 
                            "lastUpdated" : "2020-03-04T19:46:39.392Z", 
                            "securityKey" : "00001719B21C9227", 
                            "cusip" : "904764AW7", 
                            "isin" : "US904764AW76", 
                            "bondType" : "C", 
                            "issueDate" : "2017-05-05", 
                            "maturityDate" : "2022-05-05", 
                            "executionPrice" : 102.763, 
                            "executionYield" : 0.857172655463, 
                            "yieldRedemptionPrice" : numberInt(100), 
                            "yieldRedemptionDate" : numberInt(20220405), 
                            "accruedInterest" : 7.394444444444, 
                            "tradeDate" : numberInt(20200304), 
                            "minExecutionQuantity" : numberInt(1), 
                            "maxExecutionQuantity" : numberInt(50), 
                            "maxTotalExecutionQuantity" : numberInt(50), 
                            "settlementDate" : numberInt(20200306), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "mtz" : "EasternUS", 
                            "priceToCurrency" : numberInt(10), 
                            "bidEvalPrice" : 102.366728, 
                            "askEvalPrice" : 102.422997, 
                            "executionQuantity" : numberInt(50)
                        }
                    }
                }, 
                "accepted" : true, 
                "seconds" : 1.085062, 
                "correlationId" : "WASC_OE_UATJPM_OE_UAT000179320200304-19:46:39.731", 
                "output" : {
                    "executionPrice" : 102.763, 
                    "executionQuantity" : numberInt(50), 
                    "actionXref" : "1000JPMD_1583351199726_DaB6tHWabckpj4zo", 
                    "executionPrincipal" : 51381.5, 
                    "executionNetMoney" : 51751.22, 
                    "executionInterest" : 369.72
                }
            }
        }
    ]
},
{ 
    "_id" : "O#000000002353", 
    "locked" : false, 
    "actorId" : "WBR300001", 
    "requestXref" : "P1050-271189-2401", 
    "sessionId" : "9c1b94d3cb5eb2e97ca687eaa7880d93c8313709", 
    "created" : isoDate("2020-03-04T14:33:51.536-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : "WBR300001"
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-04T14:33:51.646-0500"), 
    "final" : false, 
    "accountId" : "ACC000007", 
    "securityInfo" : {
        "cusip" : "0524762K3", 
        "isin" : "US0524762K35", 
        "securityKey" : "0000005C4CF7A973", 
        "issuerCode" : "05AIH", 
        "issuanceCode" : "DER", 
        "bondType" : "M", 
        "callableInd" : false, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : numberInt(5), 
        "issueDate" : "2017-08-22", 
        "accrualDate" : "2017-08-22", 
        "maturityDate" : "2025-11-15", 
        "firstSettlementDate" : "2017-08-22", 
        "displayName" : "AUSTIN TEX WTR & WASTEWATER SYS REV/5@25", 
        "state" : "TX", 
        "outstandingAmount" : numberInt(18325000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(60), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "ratings" : {
            "moodys" : {
                "undlyLtRank" : numberInt(3)
            }, 
            "effective" : {
                "ltRank" : numberInt(3)
            }
        }, 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 5.099999904632568, 
        "evaluatedPrice" : 122.15565, 
        "term" : 5.765999794006348, 
        "trade" : {
            "tradeCount10Day" : numberInt(2), 
            "lastPrice" : 122.264, 
            "lastTradeDateTime" : "2020-02-13T17:01:56Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(156)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2025-11-15"
        }
    }, 
    "cusip" : "0524762K3", 
    "isin" : "US0524762K35", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "portfolio", 
        "pid" : numberInt(19979), 
        "source" : "utils.js", 
        "line" : numberInt(414)
    }, 
    "portfolioItemId" : numberInt(271189), 
    "portfolioEntityId" : "pmgr_O#2eb82648-b752-4758-b36a-2b074817407b", 
    "clientId" : "CLTFIDL", 
    "pullbackSeconds" : numberInt(300), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "sell", 
    "qty" : numberInt(20), 
    "openQty" : numberInt(20), 
    "minQty" : numberInt(5), 
    "price" : 123.50666, 
    "limitPrice" : 123.50666, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(20), 
    "originalPrice" : 123.50666, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR300001", 
        "displayName" : "Fidelity Portfolio Trader"
    }, 
    "timeInForce" : "GTC", 
    "displayQuantity" : numberInt(20), 
    "principal" : 24701.332, 
    "orderId" : "O#000000002353", 
    "blotterStatus" : "open", 
    "allowedActions" : [
        "edit", 
        "cancel"
    ], 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "MarketRequest" : {
        "timeInForce" : "GTC", 
        "cusip" : "0524762K3", 
        "sell" : {
            "value" : {
                "givenType" : "PRICE", 
                "given" : 123.50666, 
                "settlementDate" : "2020-03-06"
            }, 
            "quantity" : numberInt(20), 
            "minQuantity" : numberInt(5), 
            "displayQuantity" : numberInt(20)
        }, 
        "pullbackSeconds" : numberInt(300), 
        "portfolioEntityId" : "pmgr_O#2eb82648-b752-4758-b36a-2b074817407b", 
        "isin" : "US0524762K35", 
        "securityKey" : "0000005C4CF7A973", 
        "portfolioItemId" : numberInt(271189), 
        "requestXref" : "P1050-271189-2401", 
        "sender" : {
            "env" : "DEMO", 
            "cluster" : "TMDEMO", 
            "host" : "ip-10-0-1-97", 
            "app" : "portfolio", 
            "pid" : numberInt(19979), 
            "source" : "utils.js", 
            "line" : numberInt(414)
        }, 
        "eventId" : "GE-6101000a-4af1-1876e0cd-52", 
        "actorId" : "WBR300001", 
        "requestType" : "Order", 
        "accountId" : "ACC000007", 
        "orderId" : "O#000000002353", 
        "sendingTime" : isoDate("2020-03-04T14:33:51.536-0500"), 
        "cancel" : false, 
        "initiated" : isoDate("2020-03-04T14:33:51.618-0500"), 
        "requestId" : numberInt(730638762)
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "0524762K3", 
        "isin" : "US0524762K35", 
        "securityKey" : "0000005C4CF7A973", 
        "requestXref" : "P1050-271189-2401", 
        "requestId" : numberInt(730638762), 
        "segHandle" : {
            "index" : numberInt(7), 
            "magic" : numberInt(43581080), 
            "key" : "SEG8"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "ACC000007", 
        "accountXref" : "ACCT-123", 
        "accountType" : "Block", 
        "clientId" : "CLTFIDL", 
        "ask" : {
            "price" : 123.50666, 
            "yield" : 0.7705988889035923, 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200304), 
            "settlementDate" : numberInt(20200306)
        }
    }, 
    "requestId" : numberInt(730638762), 
    "accountType" : "Block", 
    "yield" : 0.7705988889035923, 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(0), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-04T14:33:51.646-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR300001", 
            "qty" : numberInt(20), 
            "minQty" : numberInt(5), 
            "displayQty" : numberInt(20), 
            "priceType" : "PRICE", 
            "price" : 123.50666, 
            "yield" : 0.7705988889035923, 
            "actorInfo" : {
                "actorId" : "WBR300001", 
                "displayName" : "Fidelity Portfolio Trader"
            }
        }
    ], 
    "currentState" : "IN-MARKET", 
    "eventSeqno" : numberInt(1), 
    "lastEventDt" : isoDate("2020-03-04T14:33:51.647-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:33:51.646Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "GTC", 
                        "cusip" : "0524762K3", 
                        "sell" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 123.50666, 
                                "settlementDate" : "2020-03-06"
                            }, 
                            "quantity" : numberInt(20), 
                            "minQuantity" : numberInt(5), 
                            "displayQuantity" : numberInt(20)
                        }, 
                        "pullbackSeconds" : numberInt(300), 
                        "portfolioEntityId" : "pmgr_O#2eb82648-b752-4758-b36a-2b074817407b", 
                        "isin" : "US0524762K35", 
                        "securityKey" : "0000005C4CF7A973", 
                        "portfolioItemId" : numberInt(271189), 
                        "requestXref" : "P1050-271189-2401", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "portfolio", 
                            "pid" : numberInt(19979), 
                            "source" : "utils.js", 
                            "line" : numberInt(414)
                        }, 
                        "eventId" : "GE-6101000a-4af1-1876e0cd-52"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.097986, 
                "correlationId" : "07369833-ed38-43dc-ac2a-2169d398283e"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002352", 
    "locked" : false, 
    "actorId" : "WBR300001", 
    "requestXref" : "P1050-91009-2400", 
    "sessionId" : "9c1b94d3cb5eb2e97ca687eaa7880d93c8313709", 
    "created" : isoDate("2020-03-04T14:32:40.572-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : "WBR300001"
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-04T14:32:44.990-0500"), 
    "final" : true, 
    "accountId" : "ACC000007", 
    "securityInfo" : {
        "cusip" : "023135AN6", 
        "isin" : "US023135AN60", 
        "securityKey" : "0000002606E4FC22", 
        "issuerCode" : "03ERC", 
        "issuanceCode" : "CNT", 
        "bondType" : "C", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : true, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : 3.8, 
        "issueDate" : "2014-12-05", 
        "accrualDate" : "2014-12-05", 
        "maturityDate" : "2024-12-05", 
        "firstCallDate" : "2024-09-05", 
        "firstSettlementDate" : "2014-12-05", 
        "ticker" : "AMZN", 
        "displayName" : "AMZN/3.8@24", 
        "naicsClassification" : [
            "454113", 
            "451211", 
            "518111"
        ], 
        "sicClassification" : [
            "5331"
        ], 
        "outstandingAmount" : numberInt(1250000000), 
        "paymentFrequency" : numberInt(2), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2020-02-11", 
        "ratings" : {
            "moodys" : {
                "ltRank" : numberInt(6)
            }, 
            "effective" : {
                "ltRank" : numberInt(6)
            }
        }, 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 4.434000015258789, 
        "evaluatedPrice" : 109.4265354, 
        "term" : 4.821000099182129, 
        "trade" : {
            "tradeCount10Day" : numberInt(91), 
            "lastPrice" : 110.871002197266, 
            "lastTradeDateTime" : "2020-03-04T18:39:17Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(1341)
        }, 
        "federalTaxStatus" : numberInt(3), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2024-12-05"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "023135AN6", 
    "isin" : "US023135AN60", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "portfolio", 
        "pid" : numberInt(19979), 
        "source" : "utils.js", 
        "line" : numberInt(414)
    }, 
    "portfolioItemId" : numberInt(91009), 
    "portfolioEntityId" : "pmgr_O#ddbd7200-0291-4e2a-9ecb-cd54d798d388", 
    "clientId" : "CLTFIDL", 
    "pullbackSeconds" : numberInt(300), 
    "filledQty" : numberInt(50), 
    "routeQty" : numberInt(0), 
    "side" : "sell", 
    "qty" : numberInt(50), 
    "openQty" : numberInt(0), 
    "minQty" : numberInt(50), 
    "price" : 112.23413714358865, 
    "limitPrice" : numberInt(28), 
    "priceType" : "SPREAD", 
    "originalQty" : numberInt(50), 
    "originalPrice" : numberInt(28), 
    "originalPriceType" : "SPREAD", 
    "actorInfo" : {
        "actorId" : "WBR300001", 
        "displayName" : "Fidelity Portfolio Trader"
    }, 
    "timeInForce" : "GTC", 
    "requestXdata" : {
        "counter" : true, 
        "initPrice" : 111.392, 
        "initYield" : 1.191, 
        "initSpread" : numberInt(47), 
        "initPriceRaw" : 111.392, 
        "initYieldRaw" : 1.190892886898, 
        "initSpreadRaw" : numberInt(47), 
        "counterTypes" : "P", 
        "given" : numberInt(28), 
        "givenType" : "SPREAD"
    }, 
    "displayQuantity" : numberInt(50), 
    "principal" : numberInt(0), 
    "orderId" : "O#000000002352", 
    "blotterStatus" : "filled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(50), 
    "totalFilledAmount" : 5612.7, 
    "MarketRequest" : {
        "actorId" : "WBR300001", 
        "requestId" : numberInt(730638755), 
        "requestType" : "Order", 
        "requestXref" : "P1050-91009-2400", 
        "requestXdata" : {
            "counter" : true, 
            "initPrice" : 111.392, 
            "initYield" : 1.191, 
            "initSpread" : numberInt(47), 
            "initPriceRaw" : 111.392, 
            "initYieldRaw" : 1.190892886898, 
            "initSpreadRaw" : numberInt(47), 
            "counterTypes" : "P", 
            "given" : numberInt(28), 
            "givenType" : "SPREAD"
        }, 
        "cusip" : "023135AN6", 
        "isin" : "US023135AN60", 
        "accountId" : "ACC000007", 
        "timeInForce" : "GTC", 
        "orderId" : "O#000000002352", 
        "portfolioItemId" : numberInt(91009), 
        "portfolioEntityId" : "pmgr_O#ddbd7200-0291-4e2a-9ecb-cd54d798d388", 
        "pullbackSeconds" : numberInt(300), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "9c1b94d3cb5eb2e97ca687eaa7880d93c8313709", 
                "actorId" : "WBR300001"
            }
        }, 
        "initiated" : isoDate("2020-03-04T14:32:44.617-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "023135AN6", 
        "isin" : "US023135AN60", 
        "securityKey" : "0000002606E4FC22", 
        "requestXref" : "P1050-91009-2400", 
        "requestXdata" : {
            "counter" : true, 
            "initPrice" : 111.392, 
            "initYield" : 1.191, 
            "initSpread" : numberInt(47), 
            "initPriceRaw" : 111.392, 
            "initYieldRaw" : 1.190892886898, 
            "initSpreadRaw" : numberInt(47), 
            "counterTypes" : "P", 
            "given" : numberInt(28), 
            "givenType" : "SPREAD"
        }, 
        "requestId" : numberInt(730638755), 
        "segHandle" : {
            "index" : numberInt(11), 
            "magic" : numberInt(43581080), 
            "key" : "SEG12"
        }, 
        "triggerCount" : numberInt(1), 
        "accountId" : "ACC000007", 
        "accountXref" : "ACCT-123", 
        "accountType" : "Block", 
        "clientId" : "CLTFIDL", 
        "ask" : {
            "price" : 112.23413714358865, 
            "yield" : 1.0054678730000002, 
            "spread" : numberInt(28), 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200304), 
            "settlementDate" : numberInt(20200306)
        }
    }, 
    "requestId" : numberInt(730638755), 
    "accountType" : "Block", 
    "yield" : 1.0054678730000002, 
    "spread" : numberInt(28), 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(1), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-04T14:32:40.771-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR300001", 
            "qty" : numberInt(50), 
            "minQty" : numberInt(50), 
            "displayQty" : numberInt(50), 
            "priceType" : "SPREAD", 
            "price" : 112.23413714358865, 
            "yield" : 1.0054678730000002, 
            "spread" : numberInt(28), 
            "actorInfo" : {
                "actorId" : "WBR300001", 
                "displayName" : "Fidelity Portfolio Trader"
            }
        }, 
        {
            "action" : "Filled", 
            "ts" : isoDate("2020-03-04T14:32:44.614-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "FXR000118", 
            "requestId" : numberInt(730589997), 
            "requestXref" : "US023135AN60:24176", 
            "executionPrice" : 112.254, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(0), 
            "settlementDate" : numberInt(20200306), 
            "actorInfo" : {
                "actorId" : "FXR000118", 
                "displayName" : "WSC_JPM_Offer(UAT)"
            }, 
            "avgFilledPrice" : 112.254, 
            "filledQty" : numberInt(50)
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(3), 
    "lastEventDt" : isoDate("2020-03-04T14:32:44.991-0500"), 
    "avgFilledPrice" : 112.25399999999999, 
    "trades" : [
        "TR#000000005270"
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:32:40.771Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "GTC", 
                        "cusip" : "023135AN6", 
                        "sell" : {
                            "value" : {
                                "givenType" : "SPREAD", 
                                "given" : numberInt(28), 
                                "settlementDate" : "2020-03-06"
                            }, 
                            "quantity" : numberInt(50), 
                            "minQuantity" : numberInt(50), 
                            "displayQuantity" : numberInt(50)
                        }, 
                        "requestXdata" : {
                            "counter" : true, 
                            "initPrice" : 111.392, 
                            "initYield" : 1.191, 
                            "initSpread" : numberInt(47), 
                            "initPriceRaw" : 111.392, 
                            "initYieldRaw" : 1.190892886898, 
                            "initSpreadRaw" : numberInt(47), 
                            "counterTypes" : "P", 
                            "given" : numberInt(28), 
                            "givenType" : "SPREAD"
                        }, 
                        "pullbackSeconds" : numberInt(300), 
                        "portfolioEntityId" : "pmgr_O#ddbd7200-0291-4e2a-9ecb-cd54d798d388", 
                        "isin" : "US023135AN60", 
                        "securityKey" : "0000002606E4FC22", 
                        "portfolioItemId" : numberInt(91009), 
                        "requestXref" : "P1050-91009-2400", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "portfolio", 
                            "pid" : numberInt(19979), 
                            "source" : "utils.js", 
                            "line" : numberInt(414)
                        }, 
                        "eventId" : "GE-6101000a-4af1-143c0d4c-4b"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.196096, 
                "correlationId" : "0a0ef813-d261-45cd-a7b4-d964de74a0d8"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:32:41Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "0a0ef813-d261-45cd-a7b4-d964de74a0d8", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200304-19:32:40.765-00:00", 
                        "triggerId" : "T#ri!st-rjKmj", 
                        "eventId" : "GE-6101000a-4af1-14400e83-4d", 
                        "securityKey" : "0000002606E4FC22", 
                        "cusip" : "023135AN6", 
                        "isin" : "US023135AN60", 
                        "bondType" : "C", 
                        "issueDate" : "2014-12-05", 
                        "maturityDate" : "2024-12-05", 
                        "executionPrice" : 112.254, 
                        "executionYield" : 1.006230706779, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20240905), 
                        "accruedInterest" : 9.605555555556, 
                        "tradeDate" : numberInt(20200304), 
                        "minExecutionQuantity" : numberInt(50), 
                        "maxExecutionQuantity" : numberInt(50), 
                        "maxTotalExecutionQuantity" : numberInt(50), 
                        "settlementDate" : numberInt(20200306), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "_sides" : [
                            {
                                "side" : "Ask", 
                                "orderId" : "O#000000002352", 
                                "requestId" : numberInt(730638755), 
                                "requestXref" : "P1050-91009-2400", 
                                "requestXdata" : {
                                    "counter" : true, 
                                    "initPrice" : 111.392, 
                                    "initYield" : 1.191, 
                                    "initSpread" : numberInt(47), 
                                    "initPriceRaw" : 111.392, 
                                    "initYieldRaw" : 1.190892886898, 
                                    "initSpreadRaw" : numberInt(47), 
                                    "counterTypes" : "P", 
                                    "given" : numberInt(28), 
                                    "givenType" : "SPREAD"
                                }, 
                                "actorId" : "WBR300001", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(91009), 
                                "accountId" : "ACC000007", 
                                "accountXref" : "ACCT-123", 
                                "accountType" : "Block", 
                                "clientId" : "CLTFIDL", 
                                "clientDisplayName" : "Fidelity", 
                                "lastPrice" : 112.234137143589, 
                                "lastQuantity" : numberInt(50), 
                                "counterParty" : "JPMS", 
                                "contraActorId" : "FXR000118", 
                                "contraClientId" : "CLT0346", 
                                "contraAccountId" : "ACC002971", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 112.254, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-04T19:32:40.759Z"
                            }, 
                            {
                                "side" : "Bid", 
                                "requestId" : numberInt(730589997), 
                                "requestXref" : "US023135AN60:24176", 
                                "requestXdata" : {
                                    "product" : "3", 
                                    "mdEntryID" : "24176"
                                }, 
                                "actorId" : "FXR000118", 
                                "requestType" : "Offering", 
                                "solRouteId" : "FXR000124", 
                                "accountId" : "ACC002971", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0346", 
                                "clientDisplayName" : "JPMS", 
                                "lastPrice" : 112.254, 
                                "lastQuantity" : numberInt(500), 
                                "counterParty" : "Fidelity", 
                                "contraActorId" : "WBR300001", 
                                "contraClientId" : "CLTFIDL", 
                                "contraAccountId" : "ACC000007", 
                                "contraAccountType" : "Block", 
                                "contraPrice" : 112.254, 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-04T19:32:36.832Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.161941, 
                "correlationId" : "0a0ef813-d261-45cd-a7b4-d964de74a0d8", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003334", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002352"
                        }, 
                        "handle" : "Mongo(5e6002584cc9c64af160bb63)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri!st-rjKmj"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T19:32:44.990Z", 
                "from" : "EXECUTING", 
                "to" : "COMPLETE", 
                "event" : {
                    "MarketActionReceived" : {
                        "sender" : {
                            "app" : "quickway1", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "pid" : numberInt(20382), 
                            "env" : "DEMO"
                        }, 
                        "solId" : "S#000000003334", 
                        "actionType" : "Fill", 
                        "executionPrice" : 112.254, 
                        "actionXref" : "1000JPMD_1583350361243_NEJzPzuBe0vhiFfA", 
                        "leavesOmsQuantity" : numberInt(0), 
                        "more" : "N", 
                        "executionQuantity" : numberInt(50), 
                        "orderXref" : "100020200304044507-J66-O#000000002352:S#000000003334", 
                        "side" : "Bid", 
                        "eventId" : "GE-6101000a-4af1-145e50f2-50", 
                        "leavesSolQuantity" : numberInt(0), 
                        "correlationId" : "WASC_OE_UATJPM_OE_UAT000176320200304-19:32:41.247", 
                        "counterParty" : "JPMS", 
                        "requestId" : numberInt(730589997), 
                        "requestType" : "Offering", 
                        "requestXref" : "US023135AN60:24176", 
                        "requestXdata" : {
                            "product" : "3", 
                            "mdEntryID" : "24176"
                        }, 
                        "tradeId" : "TR#000000005269", 
                        "executionNetMoney" : 56607.27, 
                        "executionPrincipal" : numberInt(56127), 
                        "executionInterest" : 480.27, 
                        "offerExecutionSide" : {
                            "side" : "Bid", 
                            "requestId" : numberInt(730589997), 
                            "requestXref" : "US023135AN60:24176", 
                            "requestXdata" : {
                                "product" : "3", 
                                "mdEntryID" : "24176"
                            }, 
                            "actorId" : "FXR000118", 
                            "requestType" : "Offering", 
                            "solRouteId" : "FXR000124", 
                            "accountId" : "ACC002971", 
                            "accountType" : "Dealer", 
                            "clientId" : "CLT0346", 
                            "clientDisplayName" : "JPMS", 
                            "lastPrice" : 112.254, 
                            "lastQuantity" : numberInt(500), 
                            "counterParty" : "Fidelity", 
                            "contraActorId" : "WBR300001", 
                            "contraClientId" : "CLTFIDL", 
                            "contraAccountId" : "ACC000007", 
                            "contraAccountType" : "Block", 
                            "contraPrice" : 112.254, 
                            "execSide" : "Passive", 
                            "lastUpdated" : "2020-03-04T19:32:36.832Z", 
                            "securityKey" : "0000002606E4FC22", 
                            "cusip" : "023135AN6", 
                            "isin" : "US023135AN60", 
                            "bondType" : "C", 
                            "issueDate" : "2014-12-05", 
                            "maturityDate" : "2024-12-05", 
                            "executionPrice" : 112.254, 
                            "executionYield" : 1.006230706779, 
                            "yieldRedemptionPrice" : numberInt(100), 
                            "yieldRedemptionDate" : numberInt(20240905), 
                            "accruedInterest" : 9.605555555556, 
                            "tradeDate" : numberInt(20200304), 
                            "minExecutionQuantity" : numberInt(50), 
                            "maxExecutionQuantity" : numberInt(50), 
                            "maxTotalExecutionQuantity" : numberInt(50), 
                            "settlementDate" : numberInt(20200306), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "mtz" : "EasternUS", 
                            "priceToCurrency" : numberInt(10), 
                            "correlationId" : "WASC_OE_UATJPM_OE_UAT000176320200304-19:32:41.247", 
                            "triggerType" : "HitLift", 
                            "triggerId" : "T#ri!st-rjKmj", 
                            "timestamp" : "20200304-19:32:40.765-00:00", 
                            "eventId" : "GE-6101000a-4af1-14424135-4e", 
                            "type" : "HitLift", 
                            "orderId" : "O#000000002352", 
                            "orderRequestId" : numberInt(730638755), 
                            "pullbackSeconds" : numberInt(300), 
                            "solId" : "S#000000003334", 
                            "actBy" : "2020-03-04T19:37:41.077Z", 
                            "actionable" : true, 
                            "executionQuantity" : numberInt(50)
                        }, 
                        "orderExecutionSide" : {
                            "side" : "Ask", 
                            "orderId" : "O#000000002352", 
                            "requestId" : numberInt(730638755), 
                            "requestXref" : "P1050-91009-2400", 
                            "requestXdata" : {
                                "counter" : true, 
                                "initPrice" : 111.392, 
                                "initYield" : 1.191, 
                                "initSpread" : numberInt(47), 
                                "initPriceRaw" : 111.392, 
                                "initYieldRaw" : 1.190892886898, 
                                "initSpreadRaw" : numberInt(47), 
                                "counterTypes" : "P", 
                                "given" : numberInt(28), 
                                "givenType" : "SPREAD"
                            }, 
                            "actorId" : "WBR300001", 
                            "requestType" : "Order", 
                            "portfolioItemId" : numberInt(91009), 
                            "accountId" : "ACC000007", 
                            "accountXref" : "ACCT-123", 
                            "accountType" : "Block", 
                            "clientId" : "CLTFIDL", 
                            "clientDisplayName" : "Fidelity", 
                            "lastPrice" : 112.234137143589, 
                            "lastQuantity" : numberInt(50), 
                            "counterParty" : "JPMS", 
                            "contraActorId" : "FXR000118", 
                            "contraClientId" : "CLT0346", 
                            "contraAccountId" : "ACC002971", 
                            "contraAccountType" : "Dealer", 
                            "contraPrice" : 112.254, 
                            "execSide" : "Aggressor", 
                            "lastUpdated" : "2020-03-04T19:32:40.759Z", 
                            "securityKey" : "0000002606E4FC22", 
                            "cusip" : "023135AN6", 
                            "isin" : "US023135AN60", 
                            "bondType" : "C", 
                            "issueDate" : "2014-12-05", 
                            "maturityDate" : "2024-12-05", 
                            "executionPrice" : 112.254, 
                            "executionYield" : 1.006230706779, 
                            "yieldRedemptionPrice" : numberInt(100), 
                            "yieldRedemptionDate" : numberInt(20240905), 
                            "accruedInterest" : 9.605555555556, 
                            "tradeDate" : numberInt(20200304), 
                            "minExecutionQuantity" : numberInt(50), 
                            "maxExecutionQuantity" : numberInt(50), 
                            "maxTotalExecutionQuantity" : numberInt(50), 
                            "settlementDate" : numberInt(20200306), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "mtz" : "EasternUS", 
                            "priceToCurrency" : numberInt(10), 
                            "executionQuantity" : numberInt(50)
                        }
                    }
                }, 
                "accepted" : true, 
                "seconds" : 2.143769, 
                "correlationId" : "WASC_OE_UATJPM_OE_UAT000176320200304-19:32:41.247", 
                "output" : {
                    "executionPrice" : 112.254, 
                    "executionQuantity" : numberInt(50), 
                    "actionXref" : "1000JPMD_1583350361243_NEJzPzuBe0vhiFfA", 
                    "executionPrincipal" : numberInt(56127), 
                    "executionNetMoney" : 56607.27, 
                    "executionInterest" : 480.27
                }
            }
        }
    ]
},
{ 
    "_id" : "O#000000002348", 
    "locked" : false, 
    "actorId" : "WBR000048", 
    "requestXref" : "P1062-271279-2395", 
    "sessionId" : "788259d9db5666ceb713254f3434282d3ab8feaf", 
    "created" : isoDate("2020-03-04T12:31:12.897-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : "WBR000048"
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-04T12:31:32.096-0500"), 
    "final" : true, 
    "accountId" : "ACC000027", 
    "securityInfo" : {
        "cusip" : "877175AS8", 
        "isin" : "US877175AS81", 
        "securityKey" : "0000150A02A700D8", 
        "issuerCode" : "05IBM", 
        "issuanceCode" : "CXH", 
        "bondType" : "M", 
        "callableInd" : false, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : numberInt(4), 
        "issueDate" : "2015-12-10", 
        "accrualDate" : "2015-12-10", 
        "maturityDate" : "2025-01-10", 
        "firstSettlementDate" : "2015-12-10", 
        "displayName" : "TAYLOR IND CMNTY SCH BLDG CORP/4@25", 
        "state" : "IN", 
        "outstandingAmount" : numberInt(1010000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(9), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 4.521999835968018, 
        "evaluatedPrice" : 113.49987, 
        "term" : 4.920000076293945, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(143)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2025-01-10"
        }
    }, 
    "cusip" : "877175AS8", 
    "isin" : "US877175AS81", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "portfolio", 
        "pid" : numberInt(4836), 
        "source" : "utils.js", 
        "line" : numberInt(414)
    }, 
    "portfolioItemId" : numberInt(271279), 
    "portfolioEntityId" : "pmgr_O#2d66b1cb-ec1d-46b0-b834-3fa18177eb16", 
    "clientId" : "CLT0002", 
    "actorXref" : "X-TEST2DEV", 
    "pullbackSeconds" : numberInt(300), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "sell", 
    "qty" : numberInt(200), 
    "openQty" : numberInt(200), 
    "minQty" : numberInt(5), 
    "price" : 114.245, 
    "limitPrice" : 114.245, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(200), 
    "originalPrice" : 114.245, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR000048", 
        "displayName" : "TEST2", 
        "actorXref" : "X-TEST2DEV"
    }, 
    "timeInForce" : "IOC", 
    "displayQuantity" : numberInt(200), 
    "principal" : numberInt(228490), 
    "orderId" : "O#000000002348", 
    "blotterStatus" : "canceled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "MarketRequest" : {
        "actorId" : "WBR000048", 
        "requestId" : numberInt(730621515), 
        "requestType" : "Order", 
        "requestXref" : "P1062-271279-2395", 
        "cusip" : "877175AS8", 
        "isin" : "US877175AS81", 
        "accountId" : "ACC000027", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002348", 
        "portfolioItemId" : numberInt(271279), 
        "portfolioEntityId" : "pmgr_O#2d66b1cb-ec1d-46b0-b834-3fa18177eb16", 
        "pullbackSeconds" : numberInt(300), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "788259d9db5666ceb713254f3434282d3ab8feaf", 
                "actorId" : "WBR000048"
            }
        }, 
        "initiated" : isoDate("2020-03-04T12:31:32.072-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "877175AS8", 
        "isin" : "US877175AS81", 
        "securityKey" : "0000150A02A700D8", 
        "requestXref" : "P1062-271279-2395", 
        "requestId" : numberInt(730621515), 
        "segHandle" : {
            "index" : numberInt(5), 
            "magic" : numberInt(14282392), 
            "key" : "SEG6"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "ACC000027", 
        "accountXref" : "ACCT-123", 
        "accountType" : "Block", 
        "clientId" : "CLT0002"
    }, 
    "requestId" : numberInt(730621515), 
    "accountType" : "Block", 
    "yield" : 0.9816174533716528, 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-04T12:31:12.976-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR000048", 
            "qty" : numberInt(200), 
            "minQty" : numberInt(5), 
            "displayQty" : numberInt(200), 
            "priceType" : "PRICE", 
            "price" : 114.245, 
            "yield" : 0.9816174533716528, 
            "actorInfo" : {
                "actorId" : "WBR000048", 
                "displayName" : "TEST2", 
                "actorXref" : "X-TEST2DEV"
            }
        }, 
        {
            "action" : "Canceled", 
            "ts" : isoDate("2020-03-04T12:31:26.692-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR000048", 
            "actorInfo" : {
                "actorId" : "WBR000048", 
                "displayName" : "TEST2", 
                "actorXref" : "X-TEST2DEV"
            }
        }, 
        {
            "action" : "Pass", 
            "ts" : isoDate("2020-03-04T12:31:32.071-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "ACR003535", 
            "requestId" : numberInt(730620730), 
            "requestXref" : "196045857-0", 
            "executionPrice" : 114.245, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(200), 
            "settlementDate" : numberInt(20200306), 
            "reason" : "solicitation expired", 
            "reasonCode" : "EXPIRE", 
            "actorInfo" : {
                "actorId" : "ACR003535", 
                "displayName" : "MKTX"
            }
        }, 
        {
            "action" : "Canceled", 
            "ts" : isoDate("2020-03-04T12:31:32.071-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR000048", 
            "actorInfo" : {
                "actorId" : "WBR000048", 
                "displayName" : "TEST2", 
                "actorXref" : "X-TEST2DEV"
            }
        }
    ], 
    "currentState" : "CANCELED", 
    "eventSeqno" : numberInt(4), 
    "lastEventDt" : isoDate("2020-03-04T12:31:32.099-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T17:31:12.976Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "cusip" : "877175AS8", 
                        "sell" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 114.245, 
                                "settlementDate" : "2020-03-06"
                            }, 
                            "quantity" : numberInt(200), 
                            "minQuantity" : numberInt(5), 
                            "displayQuantity" : numberInt(200)
                        }, 
                        "pullbackSeconds" : numberInt(300), 
                        "portfolioEntityId" : "pmgr_O#2d66b1cb-ec1d-46b0-b834-3fa18177eb16", 
                        "isin" : "US877175AS81", 
                        "securityKey" : "0000150A02A700D8", 
                        "portfolioItemId" : numberInt(271279), 
                        "requestXref" : "P1062-271279-2395", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "portfolio", 
                            "pid" : numberInt(4836), 
                            "source" : "utils.js", 
                            "line" : numberInt(414)
                        }, 
                        "eventId" : "GE-6101000a-568f-61daf28f-77d"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.076201, 
                "correlationId" : "7265469c-cced-445a-b981-0ecf4bf6fbae"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T17:31:13.043Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "7265469c-cced-445a-b981-0ecf4bf6fbae", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200304-17:31:12.975-00:00", 
                        "triggerId" : "T#rjGM6-rjGZL", 
                        "eventId" : "GE-6101000a-568f-61dc8084-77f", 
                        "securityKey" : "0000150A02A700D8", 
                        "cusip" : "877175AS8", 
                        "isin" : "US877175AS81", 
                        "bondType" : "M", 
                        "issueDate" : "2015-12-10", 
                        "maturityDate" : "2025-01-10", 
                        "lastPrice" : 114.245, 
                        "executionPrice" : 114.245, 
                        "executionYield" : 0.981617453372, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20250110), 
                        "accruedInterest" : 6.222222222222, 
                        "tradeDate" : numberInt(20200304), 
                        "minExecutionQuantity" : numberInt(5), 
                        "maxExecutionQuantity" : numberInt(200), 
                        "maxTotalExecutionQuantity" : numberInt(200), 
                        "settlementDate" : numberInt(20200306), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 114.20138, 
                        "askEvalPrice" : 114.30333, 
                        "_sides" : [
                            {
                                "side" : "Ask", 
                                "orderId" : "O#000000002348", 
                                "requestId" : numberInt(730621515), 
                                "requestXref" : "P1062-271279-2395", 
                                "actorId" : "WBR000048", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(271279), 
                                "accountId" : "ACC000027", 
                                "accountXref" : "ACCT-123", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0002", 
                                "clientDisplayName" : "buy2", 
                                "lastQuantity" : numberInt(200), 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "ACR003535", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 114.245, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-04T17:31:12.971Z"
                            }, 
                            {
                                "side" : "Bid", 
                                "requestId" : numberInt(730620730), 
                                "requestXref" : "196045857-0", 
                                "requestXdata" : {
                                    "subSessionKey" : "XrefID-7", 
                                    "ioi" : "Y", 
                                    "ioiID" : "196045857-0+0"
                                }, 
                                "actorId" : "ACR003535", 
                                "requestType" : "Offering", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "lastQuantity" : numberInt(250), 
                                "counterParty" : "buy2", 
                                "contraActorId" : "WBR000048", 
                                "contraClientId" : "CLT0002", 
                                "contraAccountId" : "ACC000027", 
                                "contraAccountType" : "Block", 
                                "contraPrice" : 114.245, 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-04T17:24:46.844Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.039269, 
                "correlationId" : "7265469c-cced-445a-b981-0ecf4bf6fbae", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003328", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002348"
                        }, 
                        "handle" : "Mongo(5e5fe5e14cc9c6568f424bed)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#rjGM6-rjGZL"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T17:31:26.703Z", 
                "from" : "EXECUTING", 
                "to" : "PULLBACK", 
                "event" : {
                    "OrderCanceled" : {
                        "eventId" : "GE-6101000a-568f-62abeead-781"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.103779, 
                "correlationId" : "5e9be507-e2d0-4436-b252-552f3d653b0b", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003328", 
                        "eventName" : "PullbackSolicitation", 
                        "delay" : 0.0, 
                        "sessionId" : "788259d9db5666ceb713254f3434282d3ab8feaf", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(484), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002348"
                        }, 
                        "handle" : "Mongo(5e5fe5ee4cc9c6568f424bf9)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T17:31:32.096Z", 
                "from" : "PULLBACK", 
                "to" : "CANCELED", 
                "event" : {
                    "MarketActionReceived" : {
                        "type" : "Pass", 
                        "actionType" : "Pass", 
                        "reason" : "solicitation expired", 
                        "reasonCode" : "EXPIRE", 
                        "actorId" : "ACR003535", 
                        "triggerId" : "T#rjGM6-rjGZL", 
                        "solId" : "S#000000003328", 
                        "timeout" : true, 
                        "more" : "N", 
                        "eventId" : "GE-6101000a-568f-62fee1f5-784"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.060471, 
                "correlationId" : "5e9be507-e2d0-4436-b252-552f3d653b0b+5s"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002347", 
    "locked" : false, 
    "actorId" : "WBR054633", 
    "requestXref" : "ebe6a4e6-d90a-4ad1-9128-0b85c591407c", 
    "sessionId" : "ff264758dbc7ea18f5c6a53a40a5b1571f8ca10c", 
    "created" : isoDate("2020-03-04T11:08:14.039-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054633"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-04T11:08:33.308-0500"), 
    "final" : true, 
    "securityInfo" : {
        "cusip" : "904764AW7", 
        "isin" : "US904764AW76", 
        "securityKey" : "00001719B21C9227", 
        "issuerCode" : "0397V", 
        "issuanceCode" : "DCB", 
        "bondType" : "C", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : true, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : 2.2, 
        "issueDate" : "2017-05-05", 
        "accrualDate" : "2017-05-05", 
        "maturityDate" : "2022-05-05", 
        "firstCallDate" : "2022-04-05", 
        "firstSettlementDate" : "2017-05-05", 
        "ticker" : "UNANA", 
        "displayName" : "UNANA/2.2@22", 
        "naicsClassification" : [
            "332994"
        ], 
        "sicClassification" : [
            "3489"
        ], 
        "outstandingAmount" : numberInt(850000000), 
        "paymentFrequency" : numberInt(2), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "ratings" : {
            "moodys" : {
                "enhLtRank" : numberInt(5)
            }, 
            "effective" : {
                "ltRank" : numberInt(5)
            }
        }, 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 2.174999952316284, 
        "evaluatedPrice" : 101.0490353, 
        "term" : 2.2339999675750732, 
        "trade" : {
            "tradeCount10Day" : numberInt(6), 
            "lastPrice" : 102.26000213623, 
            "lastTradeDateTime" : "2020-03-04T13:01:39Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(290)
        }, 
        "federalTaxStatus" : numberInt(3), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2022-05-05"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "904764AW7", 
    "isin" : "US904764AW76", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(5011), 
        "source" : "index.js", 
        "line" : numberInt(671)
    }, 
    "clientId" : "CLT2438", 
    "pullbackSeconds" : numberInt(300), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(250), 
    "openQty" : numberInt(250), 
    "minQty" : numberInt(250), 
    "price" : 102.77680502900762, 
    "limitPrice" : numberInt(23), 
    "priceType" : "SPREAD", 
    "originalQty" : numberInt(250), 
    "originalPrice" : numberInt(23), 
    "originalPriceType" : "SPREAD", 
    "actorInfo" : {
        "actorId" : "WBR054633", 
        "displayName" : "Credit Trader"
    }, 
    "timeInForce" : "GTC", 
    "principal" : numberInt(57500), 
    "orderId" : "O#000000002347", 
    "blotterStatus" : "canceled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "MarketRequest" : {
        "actorId" : "WBR054633", 
        "requestId" : numberInt(730609657), 
        "requestType" : "Order", 
        "requestXref" : "ebe6a4e6-d90a-4ad1-9128-0b85c591407c", 
        "cusip" : "904764AW7", 
        "isin" : "US904764AW76", 
        "timeInForce" : "GTC", 
        "orderId" : "O#000000002347", 
        "pullbackSeconds" : numberInt(300), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "ff264758dbc7ea18f5c6a53a40a5b1571f8ca10c", 
                "actorId" : "WBR054633"
            }
        }, 
        "initiated" : isoDate("2020-03-04T11:08:33.267-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "904764AW7", 
        "isin" : "US904764AW76", 
        "securityKey" : "00001719B21C9227", 
        "requestXref" : "ebe6a4e6-d90a-4ad1-9128-0b85c591407c", 
        "requestId" : numberInt(730609657), 
        "segHandle" : {
            "index" : numberInt(3), 
            "magic" : numberInt(14282392), 
            "key" : "SEG4"
        }, 
        "triggerCount" : numberInt(1), 
        "accountType" : "Block", 
        "clientId" : "CLT2438", 
        "bid" : {
            "price" : 102.77680502900762, 
            "yield" : 0.855574214, 
            "spread" : numberInt(23), 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200304), 
            "settlementDate" : numberInt(20200306)
        }
    }, 
    "requestId" : numberInt(730609657), 
    "accountType" : "Block", 
    "yield" : 0.855574214, 
    "spread" : numberInt(23), 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(1), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-04T11:08:14.071-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR054633", 
            "qty" : numberInt(250), 
            "minQty" : numberInt(250), 
            "priceType" : "SPREAD", 
            "price" : 102.77680502900762, 
            "yield" : 0.855574214, 
            "spread" : numberInt(23), 
            "actorInfo" : {
                "actorId" : "WBR054633", 
                "displayName" : "Credit Trader"
            }
        }, 
        {
            "action" : "Canceled", 
            "ts" : isoDate("2020-03-04T11:08:28.069-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR054633", 
            "actorInfo" : {
                "actorId" : "WBR054633", 
                "displayName" : "Credit Trader"
            }
        }, 
        {
            "action" : "Pass", 
            "ts" : isoDate("2020-03-04T11:08:33.266-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "FXR000118", 
            "requestId" : numberInt(730589605), 
            "requestXref" : "US904764AW76:12553", 
            "executionPrice" : 102.766, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(250), 
            "settlementDate" : numberInt(20200306), 
            "reason" : "solicitation expired", 
            "reasonCode" : "EXPIRE", 
            "actorInfo" : {
                "actorId" : "FXR000118", 
                "displayName" : "WSC_JPM_Offer(UAT)"
            }
        }, 
        {
            "action" : "Canceled", 
            "ts" : isoDate("2020-03-04T11:08:33.266-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR054633", 
            "actorInfo" : {
                "actorId" : "WBR054633", 
                "displayName" : "Credit Trader"
            }
        }
    ], 
    "currentState" : "CANCELED", 
    "eventSeqno" : numberInt(4), 
    "lastEventDt" : isoDate("2020-03-04T11:08:33.309-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T16:08:14.071Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "GTC", 
                        "securityKey" : "00001719B21C9227", 
                        "buy" : {
                            "value" : {
                                "givenType" : "SPREAD", 
                                "given" : numberInt(23), 
                                "settlementDate" : "2020-03-06"
                            }, 
                            "quantity" : numberInt(250), 
                            "minQuantity" : numberInt(250)
                        }, 
                        "pullbackSeconds" : numberInt(300), 
                        "requestXref" : "ebe6a4e6-d90a-4ad1-9128-0b85c591407c", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(5011), 
                            "source" : "index.js", 
                            "line" : numberInt(671)
                        }, 
                        "eventId" : "GE-6101000a-568f-39179a12-3d3"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.030048, 
                "correlationId" : "90da2749-2c6f-4b13-9a5e-284b47702d36"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T16:08:14.119Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "90da2749-2c6f-4b13-9a5e-284b47702d36", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200304-16:08:14.068-00:00", 
                        "triggerId" : "T#ri!ml-rjDf5", 
                        "eventId" : "GE-6101000a-568f-391854ee-3d5", 
                        "securityKey" : "00001719B21C9227", 
                        "cusip" : "904764AW7", 
                        "isin" : "US904764AW76", 
                        "bondType" : "C", 
                        "issueDate" : "2017-05-05", 
                        "maturityDate" : "2022-05-05", 
                        "executionPrice" : 102.766, 
                        "executionYield" : 0.855739608301, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20220405), 
                        "accruedInterest" : 7.394444444444, 
                        "tradeDate" : numberInt(20200304), 
                        "minExecutionQuantity" : numberInt(250), 
                        "maxExecutionQuantity" : numberInt(250), 
                        "maxTotalExecutionQuantity" : numberInt(250), 
                        "settlementDate" : numberInt(20200306), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 102.411884, 
                        "askEvalPrice" : 102.468183, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002347", 
                                "requestId" : numberInt(730609657), 
                                "requestXref" : "ebe6a4e6-d90a-4ad1-9128-0b85c591407c", 
                                "actorId" : "WBR054633", 
                                "requestType" : "Order", 
                                "accountType" : "Block", 
                                "clientId" : "CLT2438", 
                                "clientDisplayName" : "Maindemo", 
                                "lastPrice" : 102.776805029008, 
                                "lastQuantity" : numberInt(250), 
                                "counterParty" : "JPMS", 
                                "contraActorId" : "FXR000118", 
                                "contraClientId" : "CLT0346", 
                                "contraAccountId" : "ACC002971", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 102.766, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-04T16:08:14.064Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "requestId" : numberInt(730589605), 
                                "requestXref" : "US904764AW76:12553", 
                                "requestXdata" : {
                                    "product" : "3", 
                                    "mdEntryID" : "12553"
                                }, 
                                "actorId" : "FXR000118", 
                                "requestType" : "Offering", 
                                "solRouteId" : "FXR000124", 
                                "accountId" : "ACC002971", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0346", 
                                "clientDisplayName" : "JPMS", 
                                "lastPrice" : 102.766, 
                                "lastQuantity" : numberInt(500), 
                                "counterParty" : "Maindemo", 
                                "contraActorId" : "WBR054633", 
                                "contraClientId" : "CLT2438", 
                                "contraAccountType" : "Block", 
                                "contraPrice" : 102.766, 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-04T16:07:47.989Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.030491, 
                "correlationId" : "90da2749-2c6f-4b13-9a5e-284b47702d36", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003327", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002347"
                        }, 
                        "handle" : "Mongo(5e5fd26e4cc9c6568f423ad9)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri!ml-rjDf5"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T16:08:28.071Z", 
                "from" : "EXECUTING", 
                "to" : "PULLBACK", 
                "event" : {
                    "OrderCanceled" : {
                        "eventId" : "GE-6101000a-568f-39ed0aed-3d7"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.041288, 
                "correlationId" : "e0b5cd19-bbe3-4eac-8817-514d6bed12f1", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003327", 
                        "eventName" : "PullbackSolicitation", 
                        "delay" : 0.0, 
                        "sessionId" : "ff264758dbc7ea18f5c6a53a40a5b1571f8ca10c", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(484), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002347"
                        }, 
                        "handle" : "Mongo(5e5fd27c4cc9c6568f423ae9)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-04T16:08:33.308Z", 
                "from" : "PULLBACK", 
                "to" : "CANCELED", 
                "event" : {
                    "MarketActionReceived" : {
                        "type" : "Pass", 
                        "actionType" : "Pass", 
                        "reason" : "solicitation expired", 
                        "reasonCode" : "EXPIRE", 
                        "actorId" : "FXR000118", 
                        "triggerId" : "T#ri!ml-rjDf5", 
                        "solId" : "S#000000003327", 
                        "timeout" : true, 
                        "more" : "N", 
                        "eventId" : "GE-6101000a-568f-3a3c7cd1-3da"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.069472, 
                "correlationId" : "e0b5cd19-bbe3-4eac-8817-514d6bed12f1+5s"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002338", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "P5727-270253-2394", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T17:34:55.937-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T17:34:56.122-0500"), 
    "final" : false, 
    "accountId" : "bmd", 
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
        "couponType" : numberInt(17), 
        "coupon" : numberInt(7), 
        "issueDate" : "1991-12-01", 
        "accrualDate" : "1991-12-01", 
        "maturityDate" : "2021-05-01", 
        "firstCallDate" : "2001-05-01", 
        "firstSettlementDate" : "1992-01-09", 
        "displayName" : "BEXAR CNTY TEX HEALTH FACS DEV CORP HOSP REV/7@21", 
        "state" : "TX", 
        "outstandingAmount" : numberInt(5635000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(28), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 1.1679999828338623, 
        "evaluatedPrice" : 104.35805, 
        "term" : 1.2239999771118164, 
        "trade" : {
            "tradeCount10Day" : numberInt(2), 
            "lastPrice" : 104.142, 
            "lastTradeDateTime" : "2020-01-27T17:59:13Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(153)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : true, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2021-05-01"
        }, 
        "warnings" : [
            numberInt(1), 
            numberInt(5)
        ]
    }, 
    "cusip" : "088350EJ8", 
    "isin" : "US088350EJ89", 
    "portfolioItemId" : numberInt(270253), 
    "portfolioEntityId" : "pmgr_O#c972a29d-cfe4-4fa8-9c6c-a8a664be0421", 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(25), 
    "openQty" : numberInt(25), 
    "minQty" : numberInt(25), 
    "price" : 92.88, 
    "limitPrice" : 92.88, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(25), 
    "originalPrice" : 92.88, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "GTC", 
    "displayQuantity" : numberInt(25), 
    "principal" : numberInt(23220), 
    "orderId" : "O#000000002338", 
    "blotterStatus" : "open", 
    "allowedActions" : [
        "cancel"
    ], 
    "solicitedQty" : numberInt(25), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "rfqId" : "R#000000071939", 
    "quoteFirmTimeOver" : false, 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "type" : "Order", 
        "requestType" : "Order", 
        "portfolioEntityId" : "pmgr_O#c972a29d-cfe4-4fa8-9c6c-a8a664be0421", 
        "requestXref" : "P5727-270253-2394", 
        "rfqId" : "R#000000071939", 
        "pullbackSeconds" : numberInt(1800), 
        "timeInForce" : "GTC", 
        "buy" : {
            "quantity" : numberInt(25), 
            "minQuantity" : numberInt(25), 
            "value" : {
                "givenType" : "PRICE", 
                "given" : 92.88
            }, 
            "displayQuantity" : numberInt(25)
        }, 
        "isin" : "US088350EJ89", 
        "cusip" : "088350EJ8", 
        "portfolioItemId" : numberInt(270253), 
        "quoteFirmTimeOver" : false, 
        "eventId" : "GE-6101000a-2752-82311eea-734", 
        "securityKey" : "00000096103ADA94", 
        "accountId" : "bmd", 
        "orderId" : "O#000000002338", 
        "sendingTime" : isoDate("2020-03-03T17:34:55.937-0500"), 
        "cancel" : false, 
        "initiated" : isoDate("2020-03-03T17:34:55.963-0500"), 
        "requestId" : numberInt(730586753)
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "088350EJ8", 
        "isin" : "US088350EJ89", 
        "securityKey" : "00000096103ADA94", 
        "requestXref" : "P5727-270253-2394", 
        "requestId" : numberInt(730586753), 
        "segHandle" : {
            "index" : numberInt(2), 
            "magic" : numberInt(30039592), 
            "key" : "SEG3"
        }, 
        "triggerCount" : numberInt(4), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001", 
        "bid" : {
            "price" : 92.88, 
            "yield" : 13.87045748849762, 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200304), 
            "settlementDate" : numberInt(20200306)
        }
    }, 
    "requestId" : numberInt(730586753), 
    "accountType" : "Block", 
    "yield" : 13.87045748849762, 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(3), 
    "initialTriggerCount" : numberInt(4), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T17:34:55.986-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(25), 
            "minQty" : numberInt(25), 
            "displayQty" : numberInt(25), 
            "priceType" : "PRICE", 
            "price" : 92.88, 
            "yield" : 13.87045748849762, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Working", 
            "ts" : isoDate("2020-03-03T17:34:56.122-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "FXR000135", 
            "requestId" : numberInt(730586676), 
            "requestXref" : "MAQuoteID-587294", 
            "executionPrice" : 92.88, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(25), 
            "settlementDate" : numberInt(20200306), 
            "actorInfo" : {
                "actorId" : "FXR000135", 
                "displayName" : "MarketAxess CTAPI (UAT)"
            }
        }
    ], 
    "currentState" : "EXECUTING", 
    "eventSeqno" : numberInt(2), 
    "lastEventDt" : isoDate("2020-03-03T17:34:56.124-0500"), 
    "executions" : [
        {
            "correlationId" : "8e7e1f73-2ac5-46d5-89ad-8ceaf8d4509a", 
            "triggerType" : "HitLift", 
            "timestamp" : "20200303-22:34:55.968-00:00", 
            "triggerId" : "T#ri940-ri96B", 
            "eventId" : "GE-6101000a-2752-82330ee3-73c", 
            "securityKey" : "00000096103ADA94", 
            "cusip" : "088350EJ8", 
            "isin" : "US088350EJ89", 
            "bondType" : "M", 
            "issueDate" : "1991-12-01", 
            "maturityDate" : "2021-05-01", 
            "lastPrice" : 92.88, 
            "lastQuantity" : numberInt(25), 
            "executionPrice" : 92.88, 
            "executionYield" : 13.870457488498, 
            "yieldRedemptionPrice" : numberInt(100), 
            "yieldRedemptionDate" : numberInt(20210501), 
            "accruedInterest" : 24.305555555556, 
            "tradeDate" : numberInt(20200304), 
            "minExecutionQuantity" : numberInt(25), 
            "maxExecutionQuantity" : numberInt(25), 
            "maxTotalExecutionQuantity" : numberInt(25), 
            "settlementDate" : numberInt(20200306), 
            "currencyCode" : "USD", 
            "executionPriceType" : "PRICE", 
            "mtz" : "EasternUS", 
            "priceToCurrency" : numberInt(10), 
            "bidEvalPrice" : 104.0842, 
            "askEvalPrice" : 104.0981, 
            "_sides" : [
                {
                    "side" : "Bid", 
                    "orderId" : "O#000000002338", 
                    "rfqId" : "R#000000071939", 
                    "requestId" : numberInt(730586753), 
                    "requestXref" : "P5727-270253-2394", 
                    "actorId" : "WBR054655", 
                    "requestType" : "Order", 
                    "portfolioItemId" : numberInt(270253), 
                    "accountId" : "bmd", 
                    "accountXref" : "trading-test", 
                    "accountType" : "Block", 
                    "clientId" : "CLT0001", 
                    "clientDisplayName" : "buy1", 
                    "counterParty" : "MKTX", 
                    "contraActorId" : "FXR000135", 
                    "contraClientId" : "CLT0998", 
                    "contraAccountId" : "ACC003623", 
                    "contraAccountType" : "Dealer", 
                    "contraPrice" : 92.88, 
                    "execSide" : "Aggressor", 
                    "lastUpdated" : "2020-03-03T22:34:55.965Z"
                }, 
                {
                    "side" : "Ask", 
                    "rfqId" : "R#000000071939", 
                    "quoteId" : "Q#000000004902", 
                    "requestId" : numberInt(730586676), 
                    "requestXref" : "MAQuoteID-587294", 
                    "requestXdata" : {
                        "subSessionKey" : "MKTX"
                    }, 
                    "actorId" : "FXR000135", 
                    "requestType" : "Quote", 
                    "accountId" : "ACC003623", 
                    "accountType" : "Dealer", 
                    "clientId" : "CLT0998", 
                    "clientDisplayName" : "MKTX", 
                    "counterParty" : "trdtst", 
                    "contraActorId" : "WBR054655", 
                    "contraClientId" : "CLT0001", 
                    "contraClientName" : "buy1", 
                    "contraAccountId" : "bmd", 
                    "contraAccountType" : "Block", 
                    "contraAccountXref" : "True Market LLC", 
                    "contraPrice" : 92.88, 
                    "contraActorXref" : "bmd", 
                    "contraActorName" : "trade-test", 
                    "execSide" : "Passive", 
                    "lastUpdated" : "2020-03-03T22:32:53.897Z"
                }
            ], 
            "solId" : "S#000000003315"
        }
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:34:55.987Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "actorId" : "WBR054655", 
                        "type" : "Order", 
                        "requestType" : "Order", 
                        "portfolioEntityId" : "pmgr_O#c972a29d-cfe4-4fa8-9c6c-a8a664be0421", 
                        "requestXref" : "P5727-270253-2394", 
                        "rfqId" : "R#000000071939", 
                        "pullbackSeconds" : numberInt(1800), 
                        "timeInForce" : "GTC", 
                        "buy" : {
                            "quantity" : numberInt(25), 
                            "minQuantity" : numberInt(25), 
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 92.88
                            }, 
                            "displayQuantity" : numberInt(25)
                        }, 
                        "isin" : "US088350EJ89", 
                        "cusip" : "088350EJ8", 
                        "portfolioItemId" : numberInt(270253), 
                        "quoteFirmTimeOver" : false, 
                        "eventId" : "GE-6101000a-2752-82311eea-734"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.047654, 
                "correlationId" : "8e7e1f73-2ac5-46d5-89ad-8ceaf8d4509a", 
                "futures" : [
                    {
                        "entityType" : "RFQ", 
                        "entityId" : "R#000000071939", 
                        "eventName" : "RFQOrderSubmitted", 
                        "delay" : 0.0, 
                        "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(535), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002338"
                        }, 
                        "handle" : "TLS(1431)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:34:56.122Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "8e7e1f73-2ac5-46d5-89ad-8ceaf8d4509a", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-22:34:55.968-00:00", 
                        "triggerId" : "T#ri940-ri96B", 
                        "eventId" : "GE-6101000a-2752-82330ee3-73c", 
                        "securityKey" : "00000096103ADA94", 
                        "cusip" : "088350EJ8", 
                        "isin" : "US088350EJ89", 
                        "bondType" : "M", 
                        "issueDate" : "1991-12-01", 
                        "maturityDate" : "2021-05-01", 
                        "lastPrice" : 92.88, 
                        "lastQuantity" : numberInt(25), 
                        "executionPrice" : 92.88, 
                        "executionYield" : 13.870457488498, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20210501), 
                        "accruedInterest" : 24.305555555556, 
                        "tradeDate" : numberInt(20200304), 
                        "minExecutionQuantity" : numberInt(25), 
                        "maxExecutionQuantity" : numberInt(25), 
                        "maxTotalExecutionQuantity" : numberInt(25), 
                        "settlementDate" : numberInt(20200306), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 104.0842, 
                        "askEvalPrice" : 104.0981, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002338", 
                                "rfqId" : "R#000000071939", 
                                "requestId" : numberInt(730586753), 
                                "requestXref" : "P5727-270253-2394", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(270253), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "FXR000135", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 92.88, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T22:34:55.965Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "rfqId" : "R#000000071939", 
                                "quoteId" : "Q#000000004902", 
                                "requestId" : numberInt(730586676), 
                                "requestXref" : "MAQuoteID-587294", 
                                "requestXdata" : {
                                    "subSessionKey" : "MKTX"
                                }, 
                                "actorId" : "FXR000135", 
                                "requestType" : "Quote", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : 92.88, 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T22:32:53.897Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.050201, 
                "correlationId" : "8e7e1f73-2ac5-46d5-89ad-8ceaf8d4509a", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003315", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002338"
                        }, 
                        "handle" : "Mongo(5e5edb904cc9c6275243d130)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri940-ri96B"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T23:04:56.305Z", 
                "from" : "EXECUTING", 
                "event" : {
                    "MarketActionReceived" : {
                        "more" : "N", 
                        "type" : "IAmOut", 
                        "actionType" : "IAmOut", 
                        "reason" : "pullback failure", 
                        "reasonCode" : "NOROUTE", 
                        "side" : "Ask", 
                        "requestId" : numberInt(730586676), 
                        "requestXref" : "MAQuoteID-587294", 
                        "triggerId" : "T#ri940-ri96B", 
                        "solId" : "S#000000003315", 
                        "actorId" : "FXR000135", 
                        "eventId" : "GE-6101000a-2752-ed7f8979-766", 
                        "leavesSolQuantity" : 0, 
                        "correlationId" : "8e7e1f73-2ac5-46d5-89ad-8ceaf8d4509a+1800s", 
                        "counterParty" : "MKTX", 
                        "requestType" : "Quote", 
                        "requestXdata" : {
                            "subSessionKey" : "MKTX"
                        }, 
                        "quoteId" : "Q#000000004902"
                    }
                }, 
                "accepted" : false, 
                "seconds" : 0.062149, 
                "correlationId" : "8e7e1f73-2ac5-46d5-89ad-8ceaf8d4509a+1800s"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002336", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "P5727-270253-2391", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T17:25:38.027-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T17:25:38.224-0500"), 
    "final" : false, 
    "accountId" : "bmd", 
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
        "couponType" : numberInt(17), 
        "coupon" : numberInt(7), 
        "issueDate" : "1991-12-01", 
        "accrualDate" : "1991-12-01", 
        "maturityDate" : "2021-05-01", 
        "firstCallDate" : "2001-05-01", 
        "firstSettlementDate" : "1992-01-09", 
        "displayName" : "BEXAR CNTY TEX HEALTH FACS DEV CORP HOSP REV/7@21", 
        "state" : "TX", 
        "outstandingAmount" : numberInt(5635000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(28), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 1.1679999828338623, 
        "evaluatedPrice" : 104.35805, 
        "term" : 1.2239999771118164, 
        "trade" : {
            "tradeCount10Day" : numberInt(2), 
            "lastPrice" : 104.142, 
            "lastTradeDateTime" : "2020-01-27T17:59:13Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(153)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : true, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2021-05-01"
        }, 
        "warnings" : [
            numberInt(1), 
            numberInt(5)
        ]
    }, 
    "cusip" : "088350EJ8", 
    "isin" : "US088350EJ89", 
    "portfolioItemId" : numberInt(270253), 
    "portfolioEntityId" : "pmgr_O#e4c5b56a-6c72-44cd-8663-8b164550d022", 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(25), 
    "openQty" : numberInt(25), 
    "minQty" : numberInt(25), 
    "price" : 91.88, 
    "limitPrice" : 91.88, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(25), 
    "originalPrice" : 91.88, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "GTC", 
    "displayQuantity" : numberInt(25), 
    "principal" : numberInt(22970), 
    "orderId" : "O#000000002336", 
    "blotterStatus" : "open", 
    "allowedActions" : [
        "cancel"
    ], 
    "solicitedQty" : numberInt(25), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "rfqId" : "R#000000071937", 
    "quoteFirmTimeOver" : false, 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "type" : "Order", 
        "requestType" : "Order", 
        "portfolioEntityId" : "pmgr_O#e4c5b56a-6c72-44cd-8663-8b164550d022", 
        "requestXref" : "P5727-270253-2391", 
        "rfqId" : "R#000000071937", 
        "pullbackSeconds" : numberInt(1800), 
        "timeInForce" : "GTC", 
        "buy" : {
            "quantity" : numberInt(25), 
            "minQuantity" : numberInt(25), 
            "value" : {
                "givenType" : "PRICE", 
                "given" : 91.88
            }, 
            "displayQuantity" : numberInt(25)
        }, 
        "isin" : "US088350EJ89", 
        "cusip" : "088350EJ8", 
        "portfolioItemId" : numberInt(270253), 
        "quoteFirmTimeOver" : false, 
        "eventId" : "GE-6101000a-2752-60f00e37-6e5", 
        "securityKey" : "00000096103ADA94", 
        "accountId" : "bmd", 
        "orderId" : "O#000000002336", 
        "sendingTime" : isoDate("2020-03-03T17:25:38.027-0500"), 
        "cancel" : false, 
        "initiated" : isoDate("2020-03-03T17:25:38.051-0500"), 
        "requestId" : numberInt(730586425)
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "088350EJ8", 
        "isin" : "US088350EJ89", 
        "securityKey" : "00000096103ADA94", 
        "requestXref" : "P5727-270253-2391", 
        "requestId" : numberInt(730586425), 
        "segHandle" : {
            "index" : numberInt(2), 
            "magic" : numberInt(30039592), 
            "key" : "SEG3"
        }, 
        "triggerCount" : numberInt(3), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001", 
        "bid" : {
            "price" : 91.88, 
            "yield" : 14.898484765808146, 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200304), 
            "settlementDate" : numberInt(20200306)
        }
    }, 
    "requestId" : numberInt(730586425), 
    "accountType" : "Block", 
    "yield" : 14.898484765808146, 
    "settlementDate" : numberInt(20200306), 
    "tradeDate" : numberInt(20200304), 
    "triggerCount" : numberInt(2), 
    "initialTriggerCount" : numberInt(3), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T17:25:38.056-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(25), 
            "minQty" : numberInt(25), 
            "displayQty" : numberInt(25), 
            "priceType" : "PRICE", 
            "price" : 91.88, 
            "yield" : 14.898484765808146, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Working", 
            "ts" : isoDate("2020-03-03T17:25:38.224-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "FXR000135", 
            "requestId" : numberInt(730586387), 
            "requestXref" : "MAQuoteID-587287", 
            "executionPrice" : 91.88, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(25), 
            "settlementDate" : numberInt(20200306), 
            "actorInfo" : {
                "actorId" : "FXR000135", 
                "displayName" : "MarketAxess CTAPI (UAT)"
            }
        }
    ], 
    "currentState" : "EXECUTING", 
    "eventSeqno" : numberInt(2), 
    "lastEventDt" : isoDate("2020-03-03T17:25:38.227-0500"), 
    "executions" : [
        {
            "correlationId" : "158847b9-a2bb-4e33-b759-b3d2652fbc75", 
            "triggerType" : "HitLift", 
            "timestamp" : "20200303-22:25:38.055-00:00", 
            "triggerId" : "T#ri90T-ri905", 
            "eventId" : "GE-6101000a-2752-60f23c15-6ec", 
            "securityKey" : "00000096103ADA94", 
            "cusip" : "088350EJ8", 
            "isin" : "US088350EJ89", 
            "bondType" : "M", 
            "issueDate" : "1991-12-01", 
            "maturityDate" : "2021-05-01", 
            "lastPrice" : 91.88, 
            "lastQuantity" : numberInt(25), 
            "executionPrice" : 91.88, 
            "executionYield" : 14.898484765808, 
            "yieldRedemptionPrice" : numberInt(100), 
            "yieldRedemptionDate" : numberInt(20210501), 
            "accruedInterest" : 24.305555555556, 
            "tradeDate" : numberInt(20200304), 
            "minExecutionQuantity" : numberInt(25), 
            "maxExecutionQuantity" : numberInt(25), 
            "maxTotalExecutionQuantity" : numberInt(25), 
            "settlementDate" : numberInt(20200306), 
            "currencyCode" : "USD", 
            "executionPriceType" : "PRICE", 
            "mtz" : "EasternUS", 
            "priceToCurrency" : numberInt(10), 
            "bidEvalPrice" : 104.0842, 
            "askEvalPrice" : 104.0981, 
            "_sides" : [
                {
                    "side" : "Bid", 
                    "orderId" : "O#000000002336", 
                    "rfqId" : "R#000000071937", 
                    "requestId" : numberInt(730586425), 
                    "requestXref" : "P5727-270253-2391", 
                    "actorId" : "WBR054655", 
                    "requestType" : "Order", 
                    "portfolioItemId" : numberInt(270253), 
                    "accountId" : "bmd", 
                    "accountXref" : "trading-test", 
                    "accountType" : "Block", 
                    "clientId" : "CLT0001", 
                    "clientDisplayName" : "buy1", 
                    "counterParty" : "MKTX", 
                    "contraActorId" : "FXR000135", 
                    "contraClientId" : "CLT0998", 
                    "contraAccountId" : "ACC003623", 
                    "contraAccountType" : "Dealer", 
                    "contraPrice" : 91.88, 
                    "execSide" : "Aggressor", 
                    "lastUpdated" : "2020-03-03T22:25:38.051Z"
                }, 
                {
                    "side" : "Ask", 
                    "rfqId" : "R#000000071937", 
                    "quoteId" : "Q#000000004898", 
                    "requestId" : numberInt(730586387), 
                    "requestXref" : "MAQuoteID-587287", 
                    "requestXdata" : {
                        "subSessionKey" : "MKTX"
                    }, 
                    "actorId" : "FXR000135", 
                    "requestType" : "Quote", 
                    "accountId" : "ACC003623", 
                    "accountType" : "Dealer", 
                    "clientId" : "CLT0998", 
                    "clientDisplayName" : "MKTX", 
                    "counterParty" : "trdtst", 
                    "contraActorId" : "WBR054655", 
                    "contraClientId" : "CLT0001", 
                    "contraClientName" : "buy1", 
                    "contraAccountId" : "bmd", 
                    "contraAccountType" : "Block", 
                    "contraAccountXref" : "True Market LLC", 
                    "contraPrice" : 91.88, 
                    "contraActorXref" : "bmd", 
                    "contraActorName" : "trade-test", 
                    "execSide" : "Passive", 
                    "lastUpdated" : "2020-03-03T22:20:10.901Z"
                }
            ], 
            "solId" : "S#000000003314"
        }
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:25:38.057Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "actorId" : "WBR054655", 
                        "type" : "Order", 
                        "requestType" : "Order", 
                        "portfolioEntityId" : "pmgr_O#e4c5b56a-6c72-44cd-8663-8b164550d022", 
                        "requestXref" : "P5727-270253-2391", 
                        "rfqId" : "R#000000071937", 
                        "pullbackSeconds" : numberInt(1800), 
                        "timeInForce" : "GTC", 
                        "buy" : {
                            "quantity" : numberInt(25), 
                            "minQuantity" : numberInt(25), 
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 91.88
                            }, 
                            "displayQuantity" : numberInt(25)
                        }, 
                        "isin" : "US088350EJ89", 
                        "cusip" : "088350EJ8", 
                        "portfolioItemId" : numberInt(270253), 
                        "quoteFirmTimeOver" : false, 
                        "eventId" : "GE-6101000a-2752-60f00e37-6e5"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.026085, 
                "correlationId" : "158847b9-a2bb-4e33-b759-b3d2652fbc75", 
                "futures" : [
                    {
                        "entityType" : "RFQ", 
                        "entityId" : "R#000000071937", 
                        "eventName" : "RFQOrderSubmitted", 
                        "delay" : 0.0, 
                        "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(535), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002336"
                        }, 
                        "handle" : "TLS(1358)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:25:38.224Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "158847b9-a2bb-4e33-b759-b3d2652fbc75", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-22:25:38.055-00:00", 
                        "triggerId" : "T#ri90T-ri905", 
                        "eventId" : "GE-6101000a-2752-60f23c15-6ec", 
                        "securityKey" : "00000096103ADA94", 
                        "cusip" : "088350EJ8", 
                        "isin" : "US088350EJ89", 
                        "bondType" : "M", 
                        "issueDate" : "1991-12-01", 
                        "maturityDate" : "2021-05-01", 
                        "lastPrice" : 91.88, 
                        "lastQuantity" : numberInt(25), 
                        "executionPrice" : 91.88, 
                        "executionYield" : 14.898484765808, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20210501), 
                        "accruedInterest" : 24.305555555556, 
                        "tradeDate" : numberInt(20200304), 
                        "minExecutionQuantity" : numberInt(25), 
                        "maxExecutionQuantity" : numberInt(25), 
                        "maxTotalExecutionQuantity" : numberInt(25), 
                        "settlementDate" : numberInt(20200306), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 104.0842, 
                        "askEvalPrice" : 104.0981, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002336", 
                                "rfqId" : "R#000000071937", 
                                "requestId" : numberInt(730586425), 
                                "requestXref" : "P5727-270253-2391", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(270253), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "FXR000135", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 91.88, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T22:25:38.051Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "rfqId" : "R#000000071937", 
                                "quoteId" : "Q#000000004898", 
                                "requestId" : numberInt(730586387), 
                                "requestXref" : "MAQuoteID-587287", 
                                "requestXdata" : {
                                    "subSessionKey" : "MKTX"
                                }, 
                                "actorId" : "FXR000135", 
                                "requestType" : "Quote", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : 91.88, 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T22:20:10.901Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.053036, 
                "correlationId" : "158847b9-a2bb-4e33-b759-b3d2652fbc75", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003314", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002336"
                        }, 
                        "handle" : "Mongo(5e5ed9624cc9c6275243cfdb)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri90T-ri905"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:55:43.479Z", 
                "from" : "EXECUTING", 
                "event" : {
                    "MarketActionReceived" : {
                        "type" : "Pass", 
                        "actionType" : "Pass", 
                        "reason" : "solicitation expired", 
                        "reasonCode" : "EXPIRE", 
                        "actorId" : "FXR000135", 
                        "triggerId" : "T#ri90T-ri905", 
                        "solId" : "S#000000003314", 
                        "timeout" : true, 
                        "more" : "N", 
                        "eventId" : "GE-6101000a-2752-cc8ba738-753"
                    }
                }, 
                "accepted" : false, 
                "seconds" : 0.090518, 
                "correlationId" : "158847b9-a2bb-4e33-b759-b3d2652fbc75+1805s"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002334", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "81c2a92b-76e4-4f07-bbac-487baffc8821", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T16:55:04.814-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T17:00:06.063-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "13080SJK1", 
        "isin" : "US13080SJK15", 
        "securityKey" : "000002C7B0C53201", 
        "issuerCode" : "06G6Z", 
        "issuanceCode" : "CTE", 
        "bondType" : "M", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : numberInt(5), 
        "issueDate" : "2015-06-30", 
        "accrualDate" : "2015-06-30", 
        "maturityDate" : "2033-03-01", 
        "firstCallDate" : "2026-03-01", 
        "firstSettlementDate" : "2015-06-30", 
        "displayName" : "CALIFORNIA STATEWIDE CMNTYS DEV AUTH REV/5@33", 
        "state" : "CA", 
        "outstandingAmount" : numberInt(7505000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(28), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 9.883000373840332, 
        "evaluatedPrice" : 119.847, 
        "term" : 13.057000160217285, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(145)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2033-03-01"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "13080SJK1", 
    "isin" : "US13080SJK15", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(22585), 
        "source" : "index.js", 
        "line" : numberInt(501)
    }, 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(100), 
    "openQty" : numberInt(100), 
    "minQty" : numberInt(100), 
    "price" : numberInt(100), 
    "limitPrice" : numberInt(100), 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(100), 
    "originalPrice" : numberInt(100), 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "principal" : numberInt(100000), 
    "orderId" : "O#000000002334", 
    "blotterStatus" : "killed", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "preAllocation" : [
        {
            "portfolioItemId" : numberInt(270349), 
            "satisfiedQty" : numberInt(100)
        }
    ], 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730585532), 
        "requestType" : "Order", 
        "requestXref" : "81c2a92b-76e4-4f07-bbac-487baffc8821", 
        "cusip" : "13080SJK1", 
        "isin" : "US13080SJK15", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002334", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T17:00:05.860-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "13080SJK1", 
        "isin" : "US13080SJK15", 
        "securityKey" : "000002C7B0C53201", 
        "requestXref" : "81c2a92b-76e4-4f07-bbac-487baffc8821", 
        "requestId" : numberInt(730585532), 
        "segHandle" : {
            "index" : numberInt(0), 
            "magic" : numberInt(30039592), 
            "key" : "SEG1"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730585532), 
    "accountType" : "Block", 
    "yield" : 4.999869548487787, 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T16:55:04.884-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(100), 
            "minQty" : numberInt(100), 
            "priceType" : "PRICE", 
            "price" : numberInt(100), 
            "yield" : 4.999869548487787, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Pass", 
            "ts" : isoDate("2020-03-03T17:00:05.830-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "ACR003535", 
            "requestId" : numberInt(730585367), 
            "requestXref" : "195855700-0", 
            "executionPrice" : numberInt(100), 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(100), 
            "settlementDate" : numberInt(20200305), 
            "actorInfo" : {
                "actorId" : "ACR003535", 
                "displayName" : "MKTX"
            }
        }, 
        {
            "action" : "Killed", 
            "ts" : isoDate("2020-03-03T17:00:05.851-0500"), 
            "timeInForce" : "IOC", 
            "actorInfo" : {
                "displayName" : "System"
            }
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(3), 
    "lastEventDt" : isoDate("2020-03-03T17:00:06.064-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T21:55:04.884Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "000002C7B0C53201", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(100)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : numberInt(100), 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(100), 
                            "minQuantity" : numberInt(100)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "81c2a92b-76e4-4f07-bbac-487baffc8821", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-f3ab7176-606"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.063013, 
                "correlationId" : "4974350d-159c-49e6-88df-e62ac3a8a857"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T21:55:04.972Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "4974350d-159c-49e6-88df-e62ac3a8a857", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-21:55:04.875-00:00", 
                        "triggerId" : "T#ri9kX-ri9m8", 
                        "eventId" : "GE-6101000a-2752-f3ad05ca-608", 
                        "securityKey" : "000002C7B0C53201", 
                        "cusip" : "13080SJK1", 
                        "isin" : "US13080SJK15", 
                        "bondType" : "M", 
                        "issueDate" : "2015-06-30", 
                        "maturityDate" : "2033-03-01", 
                        "lastPrice" : numberInt(100), 
                        "lastQuantity" : numberInt(100), 
                        "executionPrice" : numberInt(100), 
                        "executionYield" : 4.999869548488, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20260301), 
                        "accruedInterest" : 0.555555555556, 
                        "tradeDate" : numberInt(20200303), 
                        "minExecutionQuantity" : numberInt(100), 
                        "maxExecutionQuantity" : numberInt(100), 
                        "maxTotalExecutionQuantity" : numberInt(100), 
                        "settlementDate" : numberInt(20200305), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 121.16854, 
                        "askEvalPrice" : 121.29694, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002334", 
                                "requestId" : numberInt(730585532), 
                                "requestXref" : "81c2a92b-76e4-4f07-bbac-487baffc8821", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(270349), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "ACR003535", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : numberInt(100), 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T21:55:04.868Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "requestId" : numberInt(730585367), 
                                "requestXref" : "195855700-0", 
                                "requestXdata" : {
                                    "subSessionKey" : "XrefID-12", 
                                    "ioi" : "Y", 
                                    "ioiID" : "195855700-0+0"
                                }, 
                                "actorId" : "ACR003535", 
                                "requestType" : "Offering", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : numberInt(100), 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T21:52:20.995Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.051219, 
                "correlationId" : "4974350d-159c-49e6-88df-e62ac3a8a857", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003313", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002334"
                        }, 
                        "handle" : "Mongo(5e5ed2384cc9c6275243cbae)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri9kX-ri9m8"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:00:06.063Z", 
                "from" : "EXECUTING", 
                "to" : "COMPLETE", 
                "event" : {
                    "MarketActionReceived" : {
                        "sender" : {
                            "app" : "quickway1", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "pid" : numberInt(17923), 
                            "env" : "DEMO"
                        }, 
                        "solId" : "S#000000003313", 
                        "actionType" : "Pass", 
                        "executionPrice" : numberInt(100), 
                        "more" : "N", 
                        "executionQuantity" : numberInt(100), 
                        "orderXref" : "15832728054167", 
                        "side" : "Ask", 
                        "eventId" : "GE-6101000a-2752-59aceba-62f", 
                        "leavesSolQuantity" : numberInt(0), 
                        "correlationId" : "TRUEMARKETOTMA28220200303-22:00:05.419", 
                        "counterParty" : "MKTX", 
                        "requestId" : numberInt(730585367), 
                        "requestType" : "Offering", 
                        "requestXref" : "195855700-0", 
                        "requestXdata" : {
                            "subSessionKey" : "XrefID-12", 
                            "ioi" : "Y", 
                            "ioiID" : "195855700-0+0"
                        }
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.346615, 
                "correlationId" : "TRUEMARKETOTMA28220200303-22:00:05.419"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002335", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "7edfef97-9f4f-40d5-b721-d172f09bb438", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T16:55:16.174-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T16:55:16.270-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "13080SJK1", 
        "isin" : "US13080SJK15", 
        "securityKey" : "000002C7B0C53201", 
        "issuerCode" : "06G6Z", 
        "issuanceCode" : "CTE", 
        "bondType" : "M", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : numberInt(5), 
        "issueDate" : "2015-06-30", 
        "accrualDate" : "2015-06-30", 
        "maturityDate" : "2033-03-01", 
        "firstCallDate" : "2026-03-01", 
        "firstSettlementDate" : "2015-06-30", 
        "displayName" : "CALIFORNIA STATEWIDE CMNTYS DEV AUTH REV/5@33", 
        "state" : "CA", 
        "outstandingAmount" : numberInt(7505000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(28), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 9.883000373840332, 
        "evaluatedPrice" : 119.847, 
        "term" : 13.057000160217285, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(145)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2033-03-01"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "13080SJK1", 
    "isin" : "US13080SJK15", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(22585), 
        "source" : "index.js", 
        "line" : numberInt(501)
    }, 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(100), 
    "openQty" : numberInt(100), 
    "minQty" : numberInt(100), 
    "price" : numberInt(100), 
    "limitPrice" : numberInt(100), 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(100), 
    "originalPrice" : numberInt(100), 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "principal" : numberInt(100000), 
    "orderId" : "O#000000002335", 
    "blotterStatus" : "killed", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "preAllocation" : [
        {
            "portfolioItemId" : numberInt(270349), 
            "satisfiedQty" : numberInt(100)
        }
    ], 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730585548), 
        "requestType" : "Order", 
        "requestXref" : "7edfef97-9f4f-40d5-b721-d172f09bb438", 
        "cusip" : "13080SJK1", 
        "isin" : "US13080SJK15", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002335", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T16:55:16.218-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "13080SJK1", 
        "isin" : "US13080SJK15", 
        "securityKey" : "000002C7B0C53201", 
        "requestXref" : "7edfef97-9f4f-40d5-b721-d172f09bb438", 
        "requestId" : numberInt(730585548), 
        "segHandle" : {
            "index" : numberInt(0), 
            "magic" : numberInt(30039592), 
            "key" : "SEG1"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730585548), 
    "accountType" : "Block", 
    "yield" : 4.999869548487787, 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(0), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T16:55:16.199-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(100), 
            "minQty" : numberInt(100), 
            "priceType" : "PRICE", 
            "price" : numberInt(100), 
            "yield" : 4.999869548487787, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Killed", 
            "ts" : isoDate("2020-03-03T16:55:16.216-0500"), 
            "timeInForce" : "IOC", 
            "actorInfo" : {
                "displayName" : "System"
            }
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(2), 
    "lastEventDt" : isoDate("2020-03-03T16:55:16.270-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T21:55:16.200Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "000002C7B0C53201", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(100)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : numberInt(100), 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(100), 
                            "minQuantity" : numberInt(100)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "7edfef97-9f4f-40d5-b721-d172f09bb438", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-f458ccb4-60a"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.021902, 
                "correlationId" : "5f7c0ff0-12dc-4d97-8388-2e064631183b", 
                "futures" : [
                    {
                        "entityType" : "Order", 
                        "entityId" : "O#000000002335", 
                        "eventName" : "TerminateIOCOrder", 
                        "delay" : 0.0, 
                        "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(542), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002335"
                        }, 
                        "handle" : "Mongo(5e5ed2444cc9c6275243cbba)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T21:55:16.270Z", 
                "from" : "IN-MARKET", 
                "to" : "COMPLETE", 
                "event" : {
                    "TerminateIOCOrder" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "000002C7B0C53201", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(100)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : numberInt(100), 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(100), 
                            "minQuantity" : numberInt(100)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "7edfef97-9f4f-40d5-b721-d172f09bb438", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-f4593ccd-60b"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.063591, 
                "correlationId" : "5f7c0ff0-12dc-4d97-8388-2e064631183b"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002333", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "P5727-271243-2387", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T16:34:24.821-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T16:34:24.917-0500"), 
    "final" : false, 
    "accountId" : "bmd", 
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
        "couponType" : numberInt(17), 
        "coupon" : numberInt(7), 
        "issueDate" : "1991-12-01", 
        "accrualDate" : "1991-12-01", 
        "maturityDate" : "2021-05-01", 
        "firstCallDate" : "2001-05-01", 
        "firstSettlementDate" : "1992-01-09", 
        "displayName" : "BEXAR CNTY TEX HEALTH FACS DEV CORP HOSP REV/7@21", 
        "state" : "TX", 
        "outstandingAmount" : numberInt(5635000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(28), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 1.1679999828338623, 
        "evaluatedPrice" : 104.35805, 
        "term" : 1.2239999771118164, 
        "trade" : {
            "tradeCount10Day" : numberInt(2), 
            "lastPrice" : 104.142, 
            "lastTradeDateTime" : "2020-01-27T17:59:13Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(153)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : true, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2021-05-01"
        }, 
        "warnings" : [
            numberInt(1), 
            numberInt(5)
        ]
    }, 
    "cusip" : "088350EJ8", 
    "isin" : "US088350EJ89", 
    "portfolioItemId" : numberInt(271243), 
    "portfolioEntityId" : "pmgr_O#b248759e-fb5f-4cb6-a91c-63c08ae47cfb", 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(25), 
    "openQty" : numberInt(25), 
    "minQty" : numberInt(25), 
    "price" : 99.58, 
    "limitPrice" : 99.58, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(25), 
    "originalPrice" : 99.58, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "GTC", 
    "displayQuantity" : numberInt(25), 
    "principal" : numberInt(24895), 
    "orderId" : "O#000000002333", 
    "blotterStatus" : "open", 
    "allowedActions" : [
        "cancel"
    ], 
    "solicitedQty" : numberInt(25), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "rfqId" : "R#000000071920", 
    "quoteFirmTimeOver" : false, 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "type" : "Order", 
        "requestType" : "Order", 
        "portfolioEntityId" : "pmgr_O#b248759e-fb5f-4cb6-a91c-63c08ae47cfb", 
        "requestXref" : "P5727-271243-2387", 
        "rfqId" : "R#000000071920", 
        "pullbackSeconds" : numberInt(1800), 
        "timeInForce" : "GTC", 
        "buy" : {
            "quantity" : numberInt(25), 
            "minQuantity" : numberInt(25), 
            "value" : {
                "givenType" : "PRICE", 
                "given" : 99.58
            }, 
            "displayQuantity" : numberInt(25)
        }, 
        "isin" : "US088350EJ89", 
        "cusip" : "088350EJ8", 
        "portfolioItemId" : numberInt(271243), 
        "quoteFirmTimeOver" : false, 
        "eventId" : "GE-6101000a-2752-a9c2ae46-5a6", 
        "securityKey" : "00000096103ADA94", 
        "accountId" : "bmd", 
        "orderId" : "O#000000002333", 
        "sendingTime" : isoDate("2020-03-03T16:34:24.821-0500"), 
        "cancel" : false, 
        "initiated" : isoDate("2020-03-03T16:34:24.841-0500"), 
        "requestId" : numberInt(730584191)
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "088350EJ8", 
        "isin" : "US088350EJ89", 
        "securityKey" : "00000096103ADA94", 
        "requestXref" : "P5727-271243-2387", 
        "requestId" : numberInt(730584191), 
        "segHandle" : {
            "index" : numberInt(2), 
            "magic" : numberInt(30039592), 
            "key" : "SEG3"
        }, 
        "triggerCount" : numberInt(2), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001", 
        "bid" : {
            "price" : 99.58, 
            "yield" : 7.373319176759725, 
            "calcStatus" : numberInt(0), 
            "tradeDate" : numberInt(20200303), 
            "settlementDate" : numberInt(20200305)
        }
    }, 
    "requestId" : numberInt(730584191), 
    "accountType" : "Block", 
    "yield" : 7.373319176759725, 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(1), 
    "initialTriggerCount" : numberInt(2), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T16:34:24.847-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(25), 
            "minQty" : numberInt(25), 
            "displayQty" : numberInt(25), 
            "priceType" : "PRICE", 
            "price" : 99.58, 
            "yield" : 7.373319176759725, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Working", 
            "ts" : isoDate("2020-03-03T16:34:24.917-0500"), 
            "timeInForce" : "GTC", 
            "actorId" : "FXR000135", 
            "requestId" : numberInt(730584010), 
            "requestXref" : "MAQuoteID-587264", 
            "executionPrice" : 99.58, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(25), 
            "settlementDate" : numberInt(20200305), 
            "actorInfo" : {
                "actorId" : "FXR000135", 
                "displayName" : "MarketAxess CTAPI (UAT)"
            }
        }
    ], 
    "currentState" : "EXECUTING", 
    "eventSeqno" : numberInt(2), 
    "lastEventDt" : isoDate("2020-03-03T16:34:24.919-0500"), 
    "executions" : [
        {
            "correlationId" : "af45aedc-a40b-4a1f-b093-3d0fce1a3638", 
            "triggerType" : "HitLift", 
            "timestamp" : "20200303-21:34:24.846-00:00", 
            "triggerId" : "T#ri9PK-ri9R@", 
            "eventId" : "GE-6101000a-2752-a9c35b34-5a9", 
            "securityKey" : "00000096103ADA94", 
            "cusip" : "088350EJ8", 
            "isin" : "US088350EJ89", 
            "bondType" : "M", 
            "issueDate" : "1991-12-01", 
            "maturityDate" : "2021-05-01", 
            "lastPrice" : 99.58, 
            "lastQuantity" : numberInt(25), 
            "executionPrice" : 99.58, 
            "executionYield" : 7.37331917676, 
            "yieldRedemptionPrice" : numberInt(100), 
            "yieldRedemptionDate" : numberInt(20210501), 
            "accruedInterest" : 24.111111111111, 
            "tradeDate" : numberInt(20200303), 
            "minExecutionQuantity" : numberInt(25), 
            "maxExecutionQuantity" : numberInt(25), 
            "maxTotalExecutionQuantity" : numberInt(25), 
            "settlementDate" : numberInt(20200305), 
            "currencyCode" : "USD", 
            "executionPriceType" : "PRICE", 
            "mtz" : "EasternUS", 
            "priceToCurrency" : numberInt(10), 
            "bidEvalPrice" : 104.0842, 
            "askEvalPrice" : 104.0981, 
            "_sides" : [
                {
                    "side" : "Bid", 
                    "orderId" : "O#000000002333", 
                    "rfqId" : "R#000000071920", 
                    "requestId" : numberInt(730584191), 
                    "requestXref" : "P5727-271243-2387", 
                    "actorId" : "WBR054655", 
                    "requestType" : "Order", 
                    "portfolioItemId" : numberInt(271243), 
                    "accountId" : "bmd", 
                    "accountXref" : "trading-test", 
                    "accountType" : "Block", 
                    "clientId" : "CLT0001", 
                    "clientDisplayName" : "buy1", 
                    "counterParty" : "MKTX", 
                    "contraActorId" : "FXR000135", 
                    "contraClientId" : "CLT0998", 
                    "contraAccountId" : "ACC003623", 
                    "contraAccountType" : "Dealer", 
                    "contraPrice" : 99.58, 
                    "execSide" : "Aggressor", 
                    "lastUpdated" : "2020-03-03T21:34:24.841Z"
                }, 
                {
                    "side" : "Ask", 
                    "rfqId" : "R#000000071920", 
                    "quoteId" : "Q#000000004876", 
                    "requestId" : numberInt(730584010), 
                    "requestXref" : "MAQuoteID-587264", 
                    "requestXdata" : {
                        "subSessionKey" : "MKTX"
                    }, 
                    "actorId" : "FXR000135", 
                    "requestType" : "Quote", 
                    "accountId" : "ACC003623", 
                    "accountType" : "Dealer", 
                    "clientId" : "CLT0998", 
                    "clientDisplayName" : "MKTX", 
                    "counterParty" : "trdtst", 
                    "contraActorId" : "WBR054655", 
                    "contraClientId" : "CLT0001", 
                    "contraClientName" : "buy1", 
                    "contraAccountId" : "bmd", 
                    "contraAccountType" : "Block", 
                    "contraAccountXref" : "True Market LLC", 
                    "contraPrice" : 99.58, 
                    "contraActorXref" : "bmd", 
                    "contraActorName" : "trade-test", 
                    "execSide" : "Passive", 
                    "lastUpdated" : "2020-03-03T21:32:22.619Z"
                }
            ], 
            "solId" : "S#000000003312"
        }
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T21:34:24.848Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "actorId" : "WBR054655", 
                        "type" : "Order", 
                        "requestType" : "Order", 
                        "portfolioEntityId" : "pmgr_O#b248759e-fb5f-4cb6-a91c-63c08ae47cfb", 
                        "requestXref" : "P5727-271243-2387", 
                        "rfqId" : "R#000000071920", 
                        "pullbackSeconds" : numberInt(1800), 
                        "timeInForce" : "GTC", 
                        "buy" : {
                            "quantity" : numberInt(25), 
                            "minQuantity" : numberInt(25), 
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 99.58
                            }, 
                            "displayQuantity" : numberInt(25)
                        }, 
                        "isin" : "US088350EJ89", 
                        "cusip" : "088350EJ8", 
                        "portfolioItemId" : numberInt(271243), 
                        "quoteFirmTimeOver" : false, 
                        "eventId" : "GE-6101000a-2752-a9c2ae46-5a6"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.0249, 
                "correlationId" : "af45aedc-a40b-4a1f-b093-3d0fce1a3638", 
                "futures" : [
                    {
                        "entityType" : "RFQ", 
                        "entityId" : "R#000000071920", 
                        "eventName" : "RFQOrderSubmitted", 
                        "delay" : 0.0, 
                        "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(535), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002333"
                        }, 
                        "handle" : "TLS(1022)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T21:34:24.918Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "af45aedc-a40b-4a1f-b093-3d0fce1a3638", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-21:34:24.846-00:00", 
                        "triggerId" : "T#ri9PK-ri9R@", 
                        "eventId" : "GE-6101000a-2752-a9c35b34-5a9", 
                        "securityKey" : "00000096103ADA94", 
                        "cusip" : "088350EJ8", 
                        "isin" : "US088350EJ89", 
                        "bondType" : "M", 
                        "issueDate" : "1991-12-01", 
                        "maturityDate" : "2021-05-01", 
                        "lastPrice" : 99.58, 
                        "lastQuantity" : numberInt(25), 
                        "executionPrice" : 99.58, 
                        "executionYield" : 7.37331917676, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20210501), 
                        "accruedInterest" : 24.111111111111, 
                        "tradeDate" : numberInt(20200303), 
                        "minExecutionQuantity" : numberInt(25), 
                        "maxExecutionQuantity" : numberInt(25), 
                        "maxTotalExecutionQuantity" : numberInt(25), 
                        "settlementDate" : numberInt(20200305), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 104.0842, 
                        "askEvalPrice" : 104.0981, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002333", 
                                "rfqId" : "R#000000071920", 
                                "requestId" : numberInt(730584191), 
                                "requestXref" : "P5727-271243-2387", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(271243), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "FXR000135", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 99.58, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T21:34:24.841Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "rfqId" : "R#000000071920", 
                                "quoteId" : "Q#000000004876", 
                                "requestId" : numberInt(730584010), 
                                "requestXref" : "MAQuoteID-587264", 
                                "requestXdata" : {
                                    "subSessionKey" : "MKTX"
                                }, 
                                "actorId" : "FXR000135", 
                                "requestType" : "Quote", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : 99.58, 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T21:32:22.619Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.042839, 
                "correlationId" : "af45aedc-a40b-4a1f-b093-3d0fce1a3638", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003312", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002333"
                        }, 
                        "handle" : "Mongo(5e5ecd604cc9c6275243c9ed)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri9PK-ri9R@"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T22:04:30.155Z", 
                "from" : "EXECUTING", 
                "event" : {
                    "MarketActionReceived" : {
                        "type" : "Pass", 
                        "actionType" : "Pass", 
                        "reason" : "solicitation expired", 
                        "reasonCode" : "EXPIRE", 
                        "actorId" : "FXR000135", 
                        "triggerId" : "T#ri9PK-ri9R@", 
                        "solId" : "S#000000003312", 
                        "timeout" : true, 
                        "more" : "N", 
                        "eventId" : "GE-6101000a-2752-155cd515-632"
                    }
                }, 
                "accepted" : false, 
                "seconds" : 0.065536, 
                "correlationId" : "af45aedc-a40b-4a1f-b093-3d0fce1a3638+1805s"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002332", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "e78430f2-71ef-43a9-873a-f89566b06e2c", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T15:53:19.691-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T15:53:19.823-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "securityKey" : "00000F9C602EFF3B", 
        "issuerCode" : "05Q6L", 
        "issuanceCode" : "CN7", 
        "bondType" : "M", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : 6.7, 
        "issueDate" : "2014-11-13", 
        "accrualDate" : "2014-11-13", 
        "maturityDate" : "2049-01-01", 
        "firstCallDate" : "2025-01-01", 
        "firstSettlementDate" : "2014-11-13", 
        "displayName" : "NASSAU CNTY N Y INDL DEV AGY CONTINUING CARE RETIREMENT CMNTY REV/6.7@49", 
        "state" : "NY", 
        "outstandingAmount" : numberInt(95910000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(31), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 13.020000457763672, 
        "evaluatedPrice" : 99.88793, 
        "term" : 28.895000457763672, 
        "trade" : {
            "tradeCount10Day" : numberInt(4), 
            "lastPrice" : 100.41, 
            "lastTradeDateTime" : "2020-02-06T18:06:00Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(156)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2049-01-01"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "63166UAM3", 
    "isin" : "US63166UAM36", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(22585), 
        "source" : "index.js", 
        "line" : numberInt(501)
    }, 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(110), 
    "openQty" : numberInt(110), 
    "minQty" : numberInt(110), 
    "price" : 100.71, 
    "limitPrice" : 100.71, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(110), 
    "originalPrice" : 100.71, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "principal" : 110780.99999999999, 
    "orderId" : "O#000000002332", 
    "blotterStatus" : "killed", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "preAllocation" : [
        {
            "portfolioItemId" : numberInt(270349), 
            "satisfiedQty" : numberInt(110)
        }
    ], 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730577593), 
        "requestType" : "Order", 
        "requestXref" : "e78430f2-71ef-43a9-873a-f89566b06e2c", 
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002332", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T15:53:19.746-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "securityKey" : "00000F9C602EFF3B", 
        "requestXref" : "e78430f2-71ef-43a9-873a-f89566b06e2c", 
        "requestId" : numberInt(730577593), 
        "segHandle" : {
            "index" : numberInt(5), 
            "magic" : numberInt(30039592), 
            "key" : "SEG6"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730577593), 
    "accountType" : "Block", 
    "yield" : 6.548784587334586, 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(0), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T15:53:19.728-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(110), 
            "minQty" : numberInt(110), 
            "priceType" : "PRICE", 
            "price" : 100.71, 
            "yield" : 6.548784587334586, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Killed", 
            "ts" : isoDate("2020-03-03T15:53:19.745-0500"), 
            "timeInForce" : "IOC", 
            "actorInfo" : {
                "displayName" : "System"
            }
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(2), 
    "lastEventDt" : isoDate("2020-03-03T15:53:19.823-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T20:53:19.729Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "00000F9C602EFF3B", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(110)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 100.71, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(110), 
                            "minQuantity" : numberInt(110)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "e78430f2-71ef-43a9-873a-f89566b06e2c", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-16d3c0c6-3cf"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.031237, 
                "correlationId" : "66582d29-4d5d-4d28-a29a-0ac057e6b3fd", 
                "futures" : [
                    {
                        "entityType" : "Order", 
                        "entityId" : "O#000000002332", 
                        "eventName" : "TerminateIOCOrder", 
                        "delay" : 0.0, 
                        "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(542), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002332"
                        }, 
                        "handle" : "Mongo(5e5ec3bf4cc9c6275243c13f)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T20:53:19.823Z", 
                "from" : "IN-MARKET", 
                "to" : "COMPLETE", 
                "event" : {
                    "TerminateIOCOrder" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "00000F9C602EFF3B", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(110)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 100.71, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(110), 
                            "minQuantity" : numberInt(110)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "e78430f2-71ef-43a9-873a-f89566b06e2c", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-16d4632e-3d0"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.085965, 
                "correlationId" : "66582d29-4d5d-4d28-a29a-0ac057e6b3fd"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002331", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "3331de46-7eb9-474c-9f16-e0f09e14d16d", 
    "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
    "created" : isoDate("2020-03-03T15:50:53.814-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T15:50:53.919-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "securityKey" : "00000F9C602EFF3B", 
        "issuerCode" : "05Q6L", 
        "issuanceCode" : "CN7", 
        "bondType" : "M", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : 6.7, 
        "issueDate" : "2014-11-13", 
        "accrualDate" : "2014-11-13", 
        "maturityDate" : "2049-01-01", 
        "firstCallDate" : "2025-01-01", 
        "firstSettlementDate" : "2014-11-13", 
        "displayName" : "NASSAU CNTY N Y INDL DEV AGY CONTINUING CARE RETIREMENT CMNTY REV/6.7@49", 
        "state" : "NY", 
        "outstandingAmount" : numberInt(95910000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(31), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 13.020000457763672, 
        "evaluatedPrice" : 99.88793, 
        "term" : 28.895000457763672, 
        "trade" : {
            "tradeCount10Day" : numberInt(4), 
            "lastPrice" : 100.41, 
            "lastTradeDateTime" : "2020-02-06T18:06:00Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(156)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2049-01-01"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "63166UAM3", 
    "isin" : "US63166UAM36", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(22585), 
        "source" : "index.js", 
        "line" : numberInt(501)
    }, 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(0), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(110), 
    "openQty" : numberInt(110), 
    "minQty" : numberInt(110), 
    "price" : 100.71, 
    "limitPrice" : 100.71, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(110), 
    "originalPrice" : 100.71, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "principal" : 110780.99999999999, 
    "orderId" : "O#000000002331", 
    "blotterStatus" : "killed", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(0), 
    "totalFilledAmount" : numberInt(0), 
    "preAllocation" : [
        {
            "portfolioItemId" : numberInt(270349), 
            "satisfiedQty" : numberInt(110)
        }
    ], 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730577021), 
        "requestType" : "Order", 
        "requestXref" : "3331de46-7eb9-474c-9f16-e0f09e14d16d", 
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002331", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T15:50:53.862-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "securityKey" : "00000F9C602EFF3B", 
        "requestXref" : "3331de46-7eb9-474c-9f16-e0f09e14d16d", 
        "requestId" : numberInt(730577021), 
        "segHandle" : {
            "index" : numberInt(5), 
            "magic" : numberInt(30039592), 
            "key" : "SEG6"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730577021), 
    "accountType" : "Block", 
    "yield" : 6.548784587334586, 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(0), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T15:50:53.847-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(110), 
            "minQty" : numberInt(110), 
            "priceType" : "PRICE", 
            "price" : 100.71, 
            "yield" : 6.548784587334586, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Killed", 
            "ts" : isoDate("2020-03-03T15:50:53.861-0500"), 
            "timeInForce" : "IOC", 
            "actorInfo" : {
                "displayName" : "System"
            }
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(2), 
    "lastEventDt" : isoDate("2020-03-03T15:50:53.920-0500"), 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T20:50:53.849Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "00000F9C602EFF3B", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(110)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 100.71, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(110), 
                            "minQuantity" : numberInt(110)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "3331de46-7eb9-474c-9f16-e0f09e14d16d", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-e21da12-3cb"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.025253, 
                "correlationId" : "a55e9b91-4ad2-46e9-a0ed-80ea5bbef030", 
                "futures" : [
                    {
                        "entityType" : "Order", 
                        "entityId" : "O#000000002331", 
                        "eventName" : "TerminateIOCOrder", 
                        "delay" : 0.0, 
                        "sessionId" : "dc9376e105faf85d8165d1649a9d930367d06235", 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(542), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002331"
                        }, 
                        "handle" : "Mongo(5e5ec32d4cc9c6275243c12f)"
                    }
                ]
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T20:50:53.919Z", 
                "from" : "IN-MARKET", 
                "to" : "COMPLETE", 
                "event" : {
                    "TerminateIOCOrder" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "00000F9C602EFF3B", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(110)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 100.71, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(110), 
                            "minQuantity" : numberInt(110)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "3331de46-7eb9-474c-9f16-e0f09e14d16d", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-2752-e2273e5-3cc"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.062982, 
                "correlationId" : "a55e9b91-4ad2-46e9-a0ed-80ea5bbef030"
            }
        }
    ]
},
{ 
    "_id" : "O#000000002330", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "P5766-271275-2385", 
    "sessionId" : "fafedbd83d73ec271c05e9351ff315972404a5e1", 
    "created" : isoDate("2020-03-03T13:36:15.865-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T13:36:21.921-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "697453BQ0", 
        "isin" : "US697453BQ04", 
        "securityKey" : "0000100CDC7CC318", 
        "issuerCode" : "06KVW", 
        "issuanceCode" : "E4J", 
        "bondType" : "M", 
        "callableInd" : false, 
        "calculable" : false, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "coupon" : 0.13, 
        "issueDate" : "2020-02-15", 
        "accrualDate" : "2020-02-15", 
        "maturityDate" : "2030-02-15", 
        "firstSettlementDate" : "2020-03-03", 
        "displayName" : "PALO PINTO CNTY TEX/0.13@30", 
        "state" : "TX", 
        "outstandingAmount" : numberInt(0), 
        "paymentFrequency" : numberInt(2), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2020-02-11", 
        "parValue" : numberInt(1000), 
        "term" : 9.961644172668457, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(1)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2030-02-15"
        }
    }, 
    "cusip" : "697453BQ0", 
    "isin" : "US697453BQ04", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "portfolio", 
        "pid" : numberInt(22408), 
        "source" : "utils.js", 
        "line" : numberInt(414)
    }, 
    "portfolioItemId" : numberInt(271275), 
    "portfolioEntityId" : "pmgr_O#73c7c3a4-a435-489d-8dd3-b7e4cf0dfb19", 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(200), 
    "routeQty" : numberInt(0), 
    "side" : "sell", 
    "qty" : numberInt(200), 
    "openQty" : numberInt(0), 
    "minQty" : numberInt(5), 
    "price" : 100.355, 
    "limitPrice" : 100.355, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(200), 
    "originalPrice" : 100.355, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "displayQuantity" : numberInt(200), 
    "principal" : numberInt(0), 
    "orderId" : "O#000000002330", 
    "blotterStatus" : "filled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(200), 
    "totalFilledAmount" : numberInt(20071), 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730554277), 
        "requestType" : "Order", 
        "requestXref" : "P5766-271275-2385", 
        "cusip" : "697453BQ0", 
        "isin" : "US697453BQ04", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002330", 
        "portfolioItemId" : numberInt(271275), 
        "portfolioEntityId" : "pmgr_O#73c7c3a4-a435-489d-8dd3-b7e4cf0dfb19", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "fafedbd83d73ec271c05e9351ff315972404a5e1", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T13:36:21.864-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "697453BQ0", 
        "isin" : "US697453BQ04", 
        "securityKey" : "0000100CDC7CC318", 
        "requestXref" : "P5766-271275-2385", 
        "requestId" : numberInt(730554277), 
        "segHandle" : {
            "index" : numberInt(4), 
            "magic" : numberInt(30039592), 
            "key" : "SEG5"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730554277), 
    "accountType" : "Block", 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T13:36:15.950-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(200), 
            "minQty" : numberInt(5), 
            "displayQty" : numberInt(200), 
            "priceType" : "PRICE", 
            "price" : 100.355, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Filled", 
            "ts" : isoDate("2020-03-03T13:36:21.857-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "ACR003535", 
            "requestId" : numberInt(730554253), 
            "requestXref" : "195855660-0", 
            "executionPrice" : 100.355, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(0), 
            "settlementDate" : numberInt(20200305), 
            "actorInfo" : {
                "actorId" : "ACR003535", 
                "displayName" : "MKTX"
            }, 
            "avgFilledPrice" : 100.355, 
            "filledQty" : numberInt(200)
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(3), 
    "lastEventDt" : isoDate("2020-03-03T13:36:21.923-0500"), 
    "avgFilledPrice" : 100.355, 
    "trades" : [
        "TR#000000005263"
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T18:36:15.950Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "cusip" : "697453BQ0", 
                        "timeInForce" : "IOC", 
                        "sell" : {
                            "quantity" : numberInt(200), 
                            "minQuantity" : numberInt(5), 
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 100.355, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "displayQuantity" : numberInt(200)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "portfolioEntityId" : "pmgr_O#73c7c3a4-a435-489d-8dd3-b7e4cf0dfb19", 
                        "isin" : "US697453BQ04", 
                        "securityKey" : "0000100CDC7CC318", 
                        "portfolioItemId" : numberInt(271275), 
                        "requestXref" : "P5766-271275-2385", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "portfolio", 
                            "pid" : numberInt(22408), 
                            "source" : "utils.js", 
                            "line" : numberInt(414)
                        }, 
                        "eventId" : "GE-6101000a-2752-2ca62281-116"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.082368, 
                "correlationId" : "b8cd0f1d-fe5b-4c81-9611-3ce424d72a11"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T18:36:15.997Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "b8cd0f1d-fe5b-4c81-9611-3ce424d72a11", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-18:36:15.948-00:00", 
                        "triggerId" : "T#ri1!N-ri1!l", 
                        "eventId" : "GE-6101000a-2752-2ca7acdc-118", 
                        "securityKey" : "0000100CDC7CC318", 
                        "cusip" : "697453BQ0", 
                        "isin" : "US697453BQ04", 
                        "bondType" : "M", 
                        "issueDate" : "2020-02-15", 
                        "maturityDate" : "2030-02-15", 
                        "lastPrice" : 100.355, 
                        "executionPrice" : 100.355, 
                        "tradeDate" : numberInt(20200303), 
                        "minExecutionQuantity" : numberInt(5), 
                        "maxExecutionQuantity" : numberInt(200), 
                        "maxTotalExecutionQuantity" : numberInt(200), 
                        "settlementDate" : numberInt(20200305), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "priceToCurrency" : numberInt(10), 
                        "_sides" : [
                            {
                                "side" : "Ask", 
                                "orderId" : "O#000000002330", 
                                "requestId" : numberInt(730554277), 
                                "requestXref" : "P5766-271275-2385", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(271275), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "lastQuantity" : numberInt(200), 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "ACR003535", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 100.355, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T18:36:15.945Z"
                            }, 
                            {
                                "side" : "Bid", 
                                "requestId" : numberInt(730554253), 
                                "requestXref" : "195855660-0", 
                                "requestXdata" : {
                                    "subSessionKey" : "XrefID-12", 
                                    "ioi" : "Y", 
                                    "ioiID" : "195855660-0+0"
                                }, 
                                "actorId" : "ACR003535", 
                                "requestType" : "Offering", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "lastQuantity" : numberInt(300), 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : 100.355, 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T18:36:04.964Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.028063, 
                "correlationId" : "b8cd0f1d-fe5b-4c81-9611-3ce424d72a11", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003311", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002330"
                        }, 
                        "handle" : "Mongo(5e5ea39f4cc9c6275243b969)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#ri1!N-ri1!l"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T18:36:21.921Z", 
                "from" : "EXECUTING", 
                "to" : "COMPLETE", 
                "event" : {
                    "MarketActionReceived" : {
                        "solId" : "S#000000003311", 
                        "actionType" : "Fill", 
                        "executionPrice" : 100.355, 
                        "actionXref" : "One-MUNI-2059577-0-0-102gph", 
                        "leavesOmsQuantity" : numberInt(0), 
                        "more" : "N", 
                        "executionQuantity" : numberInt(200), 
                        "orderXref" : "7431586", 
                        "side" : "Bid", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "quickway1", 
                            "pid" : numberInt(30731)
                        }, 
                        "eventId" : "GE-6101000a-2752-2cfcdb0a-11b", 
                        "leavesSolQuantity" : numberInt(0), 
                        "correlationId" : "TRUEMARKETSTPMA124820200303-18:36:21.168", 
                        "counterParty" : "MKTX", 
                        "requestId" : numberInt(730554253), 
                        "requestType" : "Offering", 
                        "requestXref" : "195855660-0", 
                        "requestXdata" : {
                            "subSessionKey" : "XrefID-12", 
                            "ioi" : "Y", 
                            "ioiID" : "195855660-0+0"
                        }, 
                        "tradeId" : "TR#000000005262", 
                        "executionNetMoney" : numberInt(200710), 
                        "executionPrincipal" : numberInt(200710), 
                        "executionInterest" : numberInt(0), 
                        "offerExecutionSide" : {
                            "side" : "Bid", 
                            "requestId" : numberInt(730554253), 
                            "requestXref" : "195855660-0", 
                            "requestXdata" : {
                                "subSessionKey" : "XrefID-12", 
                                "ioi" : "Y", 
                                "ioiID" : "195855660-0+0"
                            }, 
                            "actorId" : "ACR003535", 
                            "requestType" : "Offering", 
                            "accountId" : "ACC003623", 
                            "accountType" : "Dealer", 
                            "clientId" : "CLT0998", 
                            "clientDisplayName" : "MKTX", 
                            "lastQuantity" : numberInt(300), 
                            "counterParty" : "trdtst", 
                            "contraActorId" : "WBR054655", 
                            "contraClientId" : "CLT0001", 
                            "contraClientName" : "buy1", 
                            "contraAccountId" : "bmd", 
                            "contraAccountType" : "Block", 
                            "contraAccountXref" : "True Market LLC", 
                            "contraPrice" : 100.355, 
                            "contraActorXref" : "bmd", 
                            "contraActorName" : "trade-test", 
                            "execSide" : "Passive", 
                            "lastUpdated" : "2020-03-03T18:36:04.964Z", 
                            "securityKey" : "0000100CDC7CC318", 
                            "cusip" : "697453BQ0", 
                            "isin" : "US697453BQ04", 
                            "bondType" : "M", 
                            "issueDate" : "2020-02-15", 
                            "maturityDate" : "2030-02-15", 
                            "lastPrice" : 100.355, 
                            "executionPrice" : 100.355, 
                            "tradeDate" : numberInt(20200303), 
                            "minExecutionQuantity" : numberInt(5), 
                            "maxExecutionQuantity" : numberInt(200), 
                            "maxTotalExecutionQuantity" : numberInt(200), 
                            "settlementDate" : numberInt(20200305), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "priceToCurrency" : numberInt(10), 
                            "correlationId" : "TRUEMARKETSTPMA124820200303-18:36:21.168", 
                            "triggerType" : "HitLift", 
                            "triggerId" : "T#ri1!N-ri1!l", 
                            "timestamp" : "20200303-18:36:15.948-00:00", 
                            "eventId" : "GE-6101000a-2752-2ca837aa-119", 
                            "type" : "HitLift", 
                            "orderId" : "O#000000002330", 
                            "orderRequestId" : numberInt(730554277), 
                            "pullbackSeconds" : numberInt(1800), 
                            "solId" : "S#000000003311", 
                            "actBy" : "2020-03-03T19:06:16.024Z", 
                            "actionable" : true, 
                            "executionQuantity" : numberInt(200)
                        }, 
                        "orderExecutionSide" : {
                            "side" : "Ask", 
                            "orderId" : "O#000000002330", 
                            "requestId" : numberInt(730554277), 
                            "requestXref" : "P5766-271275-2385", 
                            "actorId" : "WBR054655", 
                            "requestType" : "Order", 
                            "portfolioItemId" : numberInt(271275), 
                            "accountId" : "bmd", 
                            "accountXref" : "trading-test", 
                            "accountType" : "Block", 
                            "clientId" : "CLT0001", 
                            "clientDisplayName" : "buy1", 
                            "lastQuantity" : numberInt(200), 
                            "counterParty" : "MKTX", 
                            "contraActorId" : "ACR003535", 
                            "contraClientId" : "CLT0998", 
                            "contraAccountId" : "ACC003623", 
                            "contraAccountType" : "Dealer", 
                            "contraPrice" : 100.355, 
                            "execSide" : "Aggressor", 
                            "lastUpdated" : "2020-03-03T18:36:15.945Z", 
                            "securityKey" : "0000100CDC7CC318", 
                            "cusip" : "697453BQ0", 
                            "isin" : "US697453BQ04", 
                            "bondType" : "M", 
                            "issueDate" : "2020-02-15", 
                            "maturityDate" : "2030-02-15", 
                            "lastPrice" : 100.355, 
                            "executionPrice" : 100.355, 
                            "tradeDate" : numberInt(20200303), 
                            "minExecutionQuantity" : numberInt(5), 
                            "maxExecutionQuantity" : numberInt(200), 
                            "maxTotalExecutionQuantity" : numberInt(200), 
                            "settlementDate" : numberInt(20200305), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "priceToCurrency" : numberInt(10), 
                            "executionQuantity" : numberInt(200)
                        }
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.357473, 
                "correlationId" : "TRUEMARKETSTPMA124820200303-18:36:21.168", 
                "output" : {
                    "executionPrice" : 100.355, 
                    "executionQuantity" : numberInt(200), 
                    "actionXref" : "One-MUNI-2059577-0-0-102gph", 
                    "executionPrincipal" : numberInt(200710), 
                    "executionNetMoney" : numberInt(200710), 
                    "executionInterest" : numberInt(0)
                }
            }
        }
    ]
},
{ 
    "_id" : "O#000000002329", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "947a3bf4-3768-4a70-b31c-2482a4203036", 
    "sessionId" : "fafedbd83d73ec271c05e9351ff315972404a5e1", 
    "created" : isoDate("2020-03-03T11:53:00.460-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T11:53:27.306-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "511074VH6", 
        "isin" : "US511074VH60", 
        "securityKey" : "00000CE6F5992F5A", 
        "issuerCode" : "05M7K", 
        "issuanceCode" : "DKS", 
        "bondType" : "M", 
        "callableInd" : false, 
        "calculable" : false, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(3), 
        "coupon" : 2.625, 
        "issueDate" : "2018-02-15", 
        "accrualDate" : "2018-04-05", 
        "maturityDate" : "2048-02-15", 
        "firstSettlementDate" : "2018-04-05", 
        "displayName" : "LAKE TRAVIS TEX INDPT SCH DIST/2.625@48", 
        "state" : "TX", 
        "outstandingAmount" : numberInt(25345000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(9), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2020-02-12", 
        "parValue" : numberInt(1000), 
        "term" : 27.97260284423828, 
        "trade" : {
            "tradeCount10Day" : numberInt(2), 
            "lastPrice" : 103.245, 
            "lastTradeDateTime" : "2020-03-03T15:59:25Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(5)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2048-02-15"
        }
    }, 
    "cusip" : "511074VH6", 
    "isin" : "US511074VH60", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(22585), 
        "source" : "index.js", 
        "line" : numberInt(501)
    }, 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(25), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(25), 
    "openQty" : numberInt(0), 
    "minQty" : numberInt(25), 
    "price" : 99.755, 
    "limitPrice" : 99.755, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(25), 
    "originalPrice" : 99.755, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "principal" : numberInt(0), 
    "orderId" : "O#000000002329", 
    "blotterStatus" : "filled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(25), 
    "totalFilledAmount" : 2493.875, 
    "preAllocation" : [
        {
            "portfolioItemId" : numberInt(270349), 
            "satisfiedQty" : numberInt(25)
        }
    ], 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730538479), 
        "requestType" : "Order", 
        "requestXref" : "947a3bf4-3768-4a70-b31c-2482a4203036", 
        "cusip" : "511074VH6", 
        "isin" : "US511074VH60", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002329", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "fafedbd83d73ec271c05e9351ff315972404a5e1", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T11:53:27.242-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "511074VH6", 
        "isin" : "US511074VH60", 
        "securityKey" : "00000CE6F5992F5A", 
        "requestXref" : "947a3bf4-3768-4a70-b31c-2482a4203036", 
        "requestId" : numberInt(730538479), 
        "segHandle" : {
            "index" : numberInt(6), 
            "magic" : numberInt(30039592), 
            "key" : "SEG7"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730538479), 
    "accountType" : "Block", 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T11:53:00.662-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(25), 
            "minQty" : numberInt(25), 
            "priceType" : "PRICE", 
            "price" : 99.755, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Filled", 
            "ts" : isoDate("2020-03-03T11:53:27.235-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "ACR003535", 
            "requestId" : numberInt(730538238), 
            "requestXref" : "195846128-0", 
            "executionPrice" : 99.755, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(0), 
            "settlementDate" : numberInt(20200305), 
            "actorInfo" : {
                "actorId" : "ACR003535", 
                "displayName" : "MKTX"
            }, 
            "avgFilledPrice" : 99.755, 
            "filledQty" : numberInt(25)
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(3), 
    "lastEventDt" : isoDate("2020-03-03T11:53:27.306-0500"), 
    "avgFilledPrice" : 99.755, 
    "trades" : [
        "TR#000000005261"
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T16:53:00.662Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "00000CE6F5992F5A", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(25)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 99.755, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(25), 
                            "minQuantity" : numberInt(25)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "947a3bf4-3768-4a70-b31c-2482a4203036", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-4241-bb5fbeda-316"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.197587, 
                "correlationId" : "92507fcd-2ffe-48e9-a7ca-62550a1fa44f"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T16:53:00.739Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "92507fcd-2ffe-48e9-a7ca-62550a1fa44f", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-16:53:00.661-00:00", 
                        "triggerId" : "T#riyD!-riyHv", 
                        "eventId" : "GE-6101000a-4241-bb635bc8-318", 
                        "securityKey" : "00000CE6F5992F5A", 
                        "cusip" : "511074VH6", 
                        "isin" : "US511074VH60", 
                        "bondType" : "M", 
                        "issueDate" : "2018-02-15", 
                        "maturityDate" : "2048-02-15", 
                        "lastPrice" : 99.755, 
                        "executionPrice" : 99.755, 
                        "executionYield" : 2.755, 
                        "tradeDate" : numberInt(20200303), 
                        "minExecutionQuantity" : numberInt(25), 
                        "maxExecutionQuantity" : numberInt(25), 
                        "maxTotalExecutionQuantity" : numberInt(25), 
                        "settlementDate" : numberInt(20200305), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 102.94071, 
                        "askEvalPrice" : 102.97981, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002329", 
                                "requestId" : numberInt(730538479), 
                                "requestXref" : "947a3bf4-3768-4a70-b31c-2482a4203036", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(270349), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "lastQuantity" : numberInt(25), 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "ACR003535", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 99.755, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T16:53:00.657Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "requestId" : numberInt(730538238), 
                                "requestXref" : "195846128-0", 
                                "requestXdata" : {
                                    "subSessionKey" : "XrefID-12", 
                                    "ioi" : "Y", 
                                    "ioiID" : "195846128-0+0"
                                }, 
                                "actorId" : "ACR003535", 
                                "requestType" : "Offering", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "lastQuantity" : numberInt(200), 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : 99.755, 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T16:51:32.201Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.04122, 
                "correlationId" : "92507fcd-2ffe-48e9-a7ca-62550a1fa44f", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003310", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002329"
                        }, 
                        "handle" : "Mongo(5e5e8b6c4cc9c642416894f8)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#riyD!-riyHv"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T16:53:27.306Z", 
                "from" : "EXECUTING", 
                "to" : "COMPLETE", 
                "event" : {
                    "MarketActionReceived" : {
                        "solId" : "S#000000003310", 
                        "actionType" : "Fill", 
                        "executionPrice" : 99.755, 
                        "actionXref" : "One-MUNI-2059504-0-0-we4c6", 
                        "leavesOmsQuantity" : numberInt(0), 
                        "more" : "N", 
                        "executionQuantity" : numberInt(25), 
                        "orderXref" : "7431367", 
                        "side" : "Ask", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "quickway1", 
                            "pid" : numberInt(30731)
                        }, 
                        "eventId" : "GE-6101000a-4241-bcf2d735-31b", 
                        "leavesSolQuantity" : numberInt(0), 
                        "correlationId" : "TRUEMARKETSTPMA104620200303-16:53:26.547", 
                        "counterParty" : "MKTX", 
                        "requestId" : numberInt(730538238), 
                        "requestType" : "Offering", 
                        "requestXref" : "195846128-0", 
                        "requestXdata" : {
                            "subSessionKey" : "XrefID-12", 
                            "ioi" : "Y", 
                            "ioiID" : "195846128-0+0"
                        }, 
                        "tradeId" : "TR#000000005260", 
                        "executionNetMoney" : 24938.75, 
                        "executionPrincipal" : 24938.75, 
                        "executionInterest" : numberInt(0), 
                        "offerExecutionSide" : {
                            "side" : "Ask", 
                            "requestId" : numberInt(730538238), 
                            "requestXref" : "195846128-0", 
                            "requestXdata" : {
                                "subSessionKey" : "XrefID-12", 
                                "ioi" : "Y", 
                                "ioiID" : "195846128-0+0"
                            }, 
                            "actorId" : "ACR003535", 
                            "requestType" : "Offering", 
                            "accountId" : "ACC003623", 
                            "accountType" : "Dealer", 
                            "clientId" : "CLT0998", 
                            "clientDisplayName" : "MKTX", 
                            "lastQuantity" : numberInt(200), 
                            "counterParty" : "trdtst", 
                            "contraActorId" : "WBR054655", 
                            "contraClientId" : "CLT0001", 
                            "contraClientName" : "buy1", 
                            "contraAccountId" : "bmd", 
                            "contraAccountType" : "Block", 
                            "contraAccountXref" : "True Market LLC", 
                            "contraPrice" : 99.755, 
                            "contraActorXref" : "bmd", 
                            "contraActorName" : "trade-test", 
                            "execSide" : "Passive", 
                            "lastUpdated" : "2020-03-03T16:51:32.201Z", 
                            "securityKey" : "00000CE6F5992F5A", 
                            "cusip" : "511074VH6", 
                            "isin" : "US511074VH60", 
                            "bondType" : "M", 
                            "issueDate" : "2018-02-15", 
                            "maturityDate" : "2048-02-15", 
                            "lastPrice" : 99.755, 
                            "executionPrice" : 99.755, 
                            "executionYield" : 2.755, 
                            "tradeDate" : numberInt(20200303), 
                            "minExecutionQuantity" : numberInt(25), 
                            "maxExecutionQuantity" : numberInt(25), 
                            "maxTotalExecutionQuantity" : numberInt(25), 
                            "settlementDate" : numberInt(20200305), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "priceToCurrency" : numberInt(10), 
                            "bidEvalPrice" : 102.94071, 
                            "askEvalPrice" : 102.97981, 
                            "correlationId" : "TRUEMARKETSTPMA104620200303-16:53:26.547", 
                            "triggerType" : "HitLift", 
                            "triggerId" : "T#riyD!-riyHv", 
                            "timestamp" : "20200303-16:53:00.661-00:00", 
                            "eventId" : "GE-6101000a-4241-bb640594-319", 
                            "type" : "HitLift", 
                            "orderId" : "O#000000002329", 
                            "orderRequestId" : numberInt(730538479), 
                            "pullbackSeconds" : numberInt(1800), 
                            "solId" : "S#000000003310", 
                            "actBy" : "2020-03-03T17:23:00.761Z", 
                            "actionable" : true, 
                            "executionQuantity" : numberInt(25)
                        }, 
                        "orderExecutionSide" : {
                            "side" : "Bid", 
                            "orderId" : "O#000000002329", 
                            "requestId" : numberInt(730538479), 
                            "requestXref" : "947a3bf4-3768-4a70-b31c-2482a4203036", 
                            "actorId" : "WBR054655", 
                            "requestType" : "Order", 
                            "portfolioItemId" : numberInt(270349), 
                            "accountId" : "bmd", 
                            "accountXref" : "trading-test", 
                            "accountType" : "Block", 
                            "clientId" : "CLT0001", 
                            "clientDisplayName" : "buy1", 
                            "lastQuantity" : numberInt(25), 
                            "counterParty" : "MKTX", 
                            "contraActorId" : "ACR003535", 
                            "contraClientId" : "CLT0998", 
                            "contraAccountId" : "ACC003623", 
                            "contraAccountType" : "Dealer", 
                            "contraPrice" : 99.755, 
                            "execSide" : "Aggressor", 
                            "lastUpdated" : "2020-03-03T16:53:00.657Z", 
                            "securityKey" : "00000CE6F5992F5A", 
                            "cusip" : "511074VH6", 
                            "isin" : "US511074VH60", 
                            "bondType" : "M", 
                            "issueDate" : "2018-02-15", 
                            "maturityDate" : "2048-02-15", 
                            "lastPrice" : 99.755, 
                            "executionPrice" : 99.755, 
                            "executionYield" : 2.755, 
                            "tradeDate" : numberInt(20200303), 
                            "minExecutionQuantity" : numberInt(25), 
                            "maxExecutionQuantity" : numberInt(25), 
                            "maxTotalExecutionQuantity" : numberInt(25), 
                            "settlementDate" : numberInt(20200305), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "priceToCurrency" : numberInt(10), 
                            "bidEvalPrice" : 102.94071, 
                            "askEvalPrice" : 102.97981, 
                            "executionQuantity" : numberInt(25)
                        }
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.424806, 
                "correlationId" : "TRUEMARKETSTPMA104620200303-16:53:26.547", 
                "output" : {
                    "executionPrice" : 99.755, 
                    "executionQuantity" : numberInt(25), 
                    "actionXref" : "One-MUNI-2059504-0-0-we4c6", 
                    "executionPrincipal" : 24938.75, 
                    "executionNetMoney" : 24938.75, 
                    "executionInterest" : numberInt(0)
                }
            }
        }
    ]
},
{ 
    "_id" : "O#000000002328", 
    "locked" : false, 
    "actorId" : "WBR054655", 
    "requestXref" : "965c3c07-e8a6-4528-be51-2eca3d0947d3", 
    "sessionId" : "fafedbd83d73ec271c05e9351ff315972404a5e1", 
    "created" : isoDate("2020-03-03T10:38:10.118-0500"), 
    "acl" : {
        "all" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "edit" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }, 
        "view" : {
            "include" : {
                "actorId" : [
                    "WBR054655"
                ]
            }
        }
    }, 
    "lockId" : "N/A", 
    "entityType" : "Order", 
    "requestType" : "Order", 
    "updated" : isoDate("2020-03-03T10:38:19.255-0500"), 
    "final" : true, 
    "accountId" : "bmd", 
    "securityInfo" : {
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "securityKey" : "00000F9C602EFF3B", 
        "issuerCode" : "05Q6L", 
        "issuanceCode" : "CN7", 
        "bondType" : "M", 
        "callableInd" : true, 
        "calculable" : true, 
        "insured" : false, 
        "defaultInd" : false, 
        "taxable" : false, 
        "subjectToAmt" : false, 
        "couponType" : numberInt(8), 
        "coupon" : 6.7, 
        "issueDate" : "2014-11-13", 
        "accrualDate" : "2014-11-13", 
        "maturityDate" : "2049-01-01", 
        "firstCallDate" : "2025-01-01", 
        "firstSettlementDate" : "2014-11-13", 
        "displayName" : "NASSAU CNTY N Y INDL DEV AGY CONTINUING CARE RETIREMENT CMNTY REV/6.7@49", 
        "state" : "NY", 
        "outstandingAmount" : numberInt(95910000), 
        "paymentFrequency" : numberInt(2), 
        "useOfProceeds" : numberInt(31), 
        "currencyCode" : "USD", 
        "lookBackTime" : "2019-09-21", 
        "parValue" : numberInt(1000), 
        "macaulayDuration" : 13.020000457763672, 
        "evaluatedPrice" : 99.88793, 
        "term" : 28.895000457763672, 
        "trade" : {
            "tradeCount10Day" : numberInt(4), 
            "lastPrice" : 100.41, 
            "lastTradeDateTime" : "2020-02-06T18:06:00Z"
        }, 
        "priceToCurrency" : numberInt(10), 
        "metadata" : {
            "sequence" : numberInt(156)
        }, 
        "federalTaxStatus" : numberInt(2), 
        "muni" : {
            "escrowedToMaturity" : false, 
            "preRefunded" : false
        }, 
        "effectiveRedemption" : {
            "date" : "2049-01-01"
        }, 
        "warnings" : [
            numberInt(1)
        ]
    }, 
    "cusip" : "63166UAM3", 
    "isin" : "US63166UAM36", 
    "sender" : {
        "env" : "DEMO", 
        "cluster" : "TMDEMO", 
        "host" : "ip-10-0-1-97", 
        "app" : "uikit", 
        "pid" : numberInt(22585), 
        "source" : "index.js", 
        "line" : numberInt(501)
    }, 
    "clientId" : "CLT0001", 
    "actorXref" : "bmd", 
    "pullbackSeconds" : numberInt(1800), 
    "filledQty" : numberInt(15), 
    "routeQty" : numberInt(0), 
    "side" : "buy", 
    "qty" : numberInt(15), 
    "openQty" : numberInt(0), 
    "minQty" : numberInt(15), 
    "price" : 100.555, 
    "limitPrice" : 100.555, 
    "priceType" : "PRICE", 
    "originalQty" : numberInt(15), 
    "originalPrice" : 100.555, 
    "originalPriceType" : "PRICE", 
    "actorInfo" : {
        "actorId" : "WBR054655", 
        "displayName" : "trade-test", 
        "actorXref" : "bmd"
    }, 
    "timeInForce" : "IOC", 
    "principal" : numberInt(0), 
    "orderId" : "O#000000002328", 
    "blotterStatus" : "filled", 
    "solicitedQty" : numberInt(0), 
    "totalFilledQuantity" : numberInt(15), 
    "totalFilledAmount" : 1508.325, 
    "preAllocation" : [
        {
            "portfolioItemId" : numberInt(270349), 
            "satisfiedQty" : numberInt(15)
        }
    ], 
    "MarketRequest" : {
        "actorId" : "WBR054655", 
        "requestId" : numberInt(730525423), 
        "requestType" : "Order", 
        "requestXref" : "965c3c07-e8a6-4528-be51-2eca3d0947d3", 
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "accountId" : "bmd", 
        "timeInForce" : "IOC", 
        "orderId" : "O#000000002328", 
        "pullbackSeconds" : numberInt(1800), 
        "cancel" : true, 
        "sess_ctx" : {
            "CORE::ClientContext" : {
                "sessionId" : "fafedbd83d73ec271c05e9351ff315972404a5e1", 
                "actorId" : "WBR054655"
            }
        }, 
        "initiated" : isoDate("2020-03-03T10:38:19.038-0500")
    }, 
    "MarketResponse" : {
        "status" : "OK", 
        "code" : numberInt(0), 
        "type" : "Order", 
        "requestType" : "Order", 
        "cusip" : "63166UAM3", 
        "isin" : "US63166UAM36", 
        "securityKey" : "00000F9C602EFF3B", 
        "requestXref" : "965c3c07-e8a6-4528-be51-2eca3d0947d3", 
        "requestId" : numberInt(730525423), 
        "segHandle" : {
            "index" : numberInt(5), 
            "magic" : numberInt(30039592), 
            "key" : "SEG6"
        }, 
        "triggerCount" : numberInt(0), 
        "accountId" : "bmd", 
        "accountXref" : "trading-test", 
        "accountType" : "Block", 
        "clientId" : "CLT0001"
    }, 
    "requestId" : numberInt(730525423), 
    "accountType" : "Block", 
    "yield" : 6.581108781952148, 
    "settlementDate" : numberInt(20200305), 
    "tradeDate" : numberInt(20200303), 
    "triggerCount" : numberInt(0), 
    "initialTriggerCount" : numberInt(1), 
    "detail" : [
        {
            "action" : "Created", 
            "ts" : isoDate("2020-03-03T10:38:10.425-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "WBR054655", 
            "qty" : numberInt(15), 
            "minQty" : numberInt(15), 
            "priceType" : "PRICE", 
            "price" : 100.555, 
            "yield" : 6.581108781952148, 
            "actorInfo" : {
                "actorId" : "WBR054655", 
                "displayName" : "trade-test", 
                "actorXref" : "bmd"
            }
        }, 
        {
            "action" : "Filled", 
            "ts" : isoDate("2020-03-03T10:38:19.034-0500"), 
            "timeInForce" : "IOC", 
            "actorId" : "ACR003535", 
            "requestId" : numberInt(730525255), 
            "requestXref" : "195835993-0", 
            "executionPrice" : 100.555, 
            "executionPriceType" : "PRICE", 
            "executionQty" : numberInt(0), 
            "settlementDate" : numberInt(20200305), 
            "actorInfo" : {
                "actorId" : "ACR003535", 
                "displayName" : "MKTX"
            }, 
            "avgFilledPrice" : 100.555, 
            "filledQty" : numberInt(15)
        }
    ], 
    "currentState" : "COMPLETE", 
    "eventSeqno" : numberInt(3), 
    "lastEventDt" : isoDate("2020-03-03T10:38:19.257-0500"), 
    "avgFilledPrice" : 100.555, 
    "trades" : [
        "TR#000000005259"
    ], 
    "log" : [
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T15:38:10.426Z", 
                "from" : "CREATED", 
                "to" : "IN-MARKET", 
                "event" : {
                    "OrderReceived" : {
                        "timeInForce" : "IOC", 
                        "securityKey" : "00000F9C602EFF3B", 
                        "preAllocation" : [
                            {
                                "portfolioItemId" : numberInt(270349), 
                                "satisfiedQty" : numberInt(15)
                            }
                        ], 
                        "buy" : {
                            "value" : {
                                "givenType" : "PRICE", 
                                "given" : 100.555, 
                                "settlementDate" : "2020-03-05"
                            }, 
                            "quantity" : numberInt(15), 
                            "minQuantity" : numberInt(15)
                        }, 
                        "pullbackSeconds" : numberInt(1800), 
                        "requestXref" : "965c3c07-e8a6-4528-be51-2eca3d0947d3", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "uikit", 
                            "pid" : numberInt(22585), 
                            "source" : "index.js", 
                            "line" : numberInt(501)
                        }, 
                        "eventId" : "GE-6101000a-4241-afba9321-220"
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.302455, 
                "correlationId" : "e07d5983-dac5-4457-8d09-41f622b92c55"
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T15:38:10.472Z", 
                "from" : "IN-MARKET", 
                "to" : "EXECUTING", 
                "event" : {
                    "MarketActionTrigger" : {
                        "correlationId" : "e07d5983-dac5-4457-8d09-41f622b92c55", 
                        "triggerType" : "HitLift", 
                        "timestamp" : "20200303-15:38:10.424-00:00", 
                        "triggerId" : "T#riu5H-riu7v", 
                        "eventId" : "GE-6101000a-4241-afbf834a-222", 
                        "securityKey" : "00000F9C602EFF3B", 
                        "cusip" : "63166UAM3", 
                        "isin" : "US63166UAM36", 
                        "bondType" : "M", 
                        "issueDate" : "2014-11-13", 
                        "maturityDate" : "2049-01-01", 
                        "lastPrice" : 100.555, 
                        "executionPrice" : 100.555, 
                        "executionYield" : 6.581108781952, 
                        "yieldRedemptionPrice" : numberInt(100), 
                        "yieldRedemptionDate" : numberInt(20260101), 
                        "accruedInterest" : 11.911111111111, 
                        "tradeDate" : numberInt(20200303), 
                        "minExecutionQuantity" : numberInt(15), 
                        "maxExecutionQuantity" : numberInt(15), 
                        "maxTotalExecutionQuantity" : numberInt(15), 
                        "settlementDate" : numberInt(20200305), 
                        "currencyCode" : "USD", 
                        "executionPriceType" : "PRICE", 
                        "mtz" : "EasternUS", 
                        "priceToCurrency" : numberInt(10), 
                        "bidEvalPrice" : 100.33028, 
                        "askEvalPrice" : 100.52161, 
                        "_sides" : [
                            {
                                "side" : "Bid", 
                                "orderId" : "O#000000002328", 
                                "requestId" : numberInt(730525423), 
                                "requestXref" : "965c3c07-e8a6-4528-be51-2eca3d0947d3", 
                                "actorId" : "WBR054655", 
                                "requestType" : "Order", 
                                "portfolioItemId" : numberInt(270349), 
                                "accountId" : "bmd", 
                                "accountXref" : "trading-test", 
                                "accountType" : "Block", 
                                "clientId" : "CLT0001", 
                                "clientDisplayName" : "buy1", 
                                "lastQuantity" : numberInt(15), 
                                "counterParty" : "MKTX", 
                                "contraActorId" : "ACR003535", 
                                "contraClientId" : "CLT0998", 
                                "contraAccountId" : "ACC003623", 
                                "contraAccountType" : "Dealer", 
                                "contraPrice" : 100.555, 
                                "execSide" : "Aggressor", 
                                "lastUpdated" : "2020-03-03T15:38:10.421Z"
                            }, 
                            {
                                "side" : "Ask", 
                                "requestId" : numberInt(730525255), 
                                "requestXref" : "195835993-0", 
                                "requestXdata" : {
                                    "subSessionKey" : "XrefID-12", 
                                    "ioi" : "Y", 
                                    "ioiID" : "195835993-0+0"
                                }, 
                                "actorId" : "ACR003535", 
                                "requestType" : "Offering", 
                                "accountId" : "ACC003623", 
                                "accountType" : "Dealer", 
                                "clientId" : "CLT0998", 
                                "clientDisplayName" : "MKTX", 
                                "lastQuantity" : numberInt(100), 
                                "counterParty" : "trdtst", 
                                "contraActorId" : "WBR054655", 
                                "contraClientId" : "CLT0001", 
                                "contraClientName" : "buy1", 
                                "contraAccountId" : "bmd", 
                                "contraAccountType" : "Block", 
                                "contraAccountXref" : "True Market LLC", 
                                "contraPrice" : 100.555, 
                                "contraActorXref" : "bmd", 
                                "contraActorName" : "trade-test", 
                                "execSide" : "Passive", 
                                "lastUpdated" : "2020-03-03T15:37:07.341Z"
                            }
                        ]
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.026376, 
                "correlationId" : "e07d5983-dac5-4457-8d09-41f622b92c55", 
                "futures" : [
                    {
                        "entityType" : "Solicitation", 
                        "entityId" : "S#000000003309", 
                        "eventName" : "RouteSolicitation", 
                        "delay" : 0.0, 
                        "origin" : {
                            "source" : "Order_HitLift.js", 
                            "line" : numberInt(437), 
                            "entityType" : "Order", 
                            "entityId" : "O#000000002328"
                        }, 
                        "handle" : "Mongo(5e5e79e24cc9c64241689099)"
                    }
                ], 
                "output" : {
                    "triggerId" : "T#riu5H-riu7v"
                }
            }
        }, 
        {
            "ApplyEvent" : {
                "ts" : "2020-03-03T15:38:19.255Z", 
                "from" : "EXECUTING", 
                "to" : "COMPLETE", 
                "event" : {
                    "MarketActionReceived" : {
                        "solId" : "S#000000003309", 
                        "actionType" : "Fill", 
                        "executionPrice" : 100.555, 
                        "actionXref" : "One-MUNI-2059447-0-0-tphm1", 
                        "leavesOmsQuantity" : numberInt(0), 
                        "more" : "N", 
                        "executionQuantity" : numberInt(15), 
                        "orderXref" : "7431211", 
                        "side" : "Ask", 
                        "sender" : {
                            "env" : "DEMO", 
                            "cluster" : "TMDEMO", 
                            "host" : "ip-10-0-1-97", 
                            "app" : "quickway1", 
                            "pid" : numberInt(30731)
                        }, 
                        "eventId" : "GE-6101000a-4241-b03c2226-225", 
                        "leavesSolQuantity" : numberInt(0), 
                        "correlationId" : "TRUEMARKETSTPMA89920200303-15:38:18.145", 
                        "counterParty" : "MKTX", 
                        "requestId" : numberInt(730525255), 
                        "requestType" : "Offering", 
                        "requestXref" : "195835993-0", 
                        "requestXdata" : {
                            "subSessionKey" : "XrefID-12", 
                            "ioi" : "Y", 
                            "ioiID" : "195835993-0+0"
                        }, 
                        "tradeId" : "TR#000000005258", 
                        "executionNetMoney" : 15261.91, 
                        "executionPrincipal" : 15083.25, 
                        "executionInterest" : 178.66, 
                        "offerExecutionSide" : {
                            "side" : "Ask", 
                            "requestId" : numberInt(730525255), 
                            "requestXref" : "195835993-0", 
                            "requestXdata" : {
                                "subSessionKey" : "XrefID-12", 
                                "ioi" : "Y", 
                                "ioiID" : "195835993-0+0"
                            }, 
                            "actorId" : "ACR003535", 
                            "requestType" : "Offering", 
                            "accountId" : "ACC003623", 
                            "accountType" : "Dealer", 
                            "clientId" : "CLT0998", 
                            "clientDisplayName" : "MKTX", 
                            "lastQuantity" : numberInt(100), 
                            "counterParty" : "trdtst", 
                            "contraActorId" : "WBR054655", 
                            "contraClientId" : "CLT0001", 
                            "contraClientName" : "buy1", 
                            "contraAccountId" : "bmd", 
                            "contraAccountType" : "Block", 
                            "contraAccountXref" : "True Market LLC", 
                            "contraPrice" : 100.555, 
                            "contraActorXref" : "bmd", 
                            "contraActorName" : "trade-test", 
                            "execSide" : "Passive", 
                            "lastUpdated" : "2020-03-03T15:37:07.341Z", 
                            "securityKey" : "00000F9C602EFF3B", 
                            "cusip" : "63166UAM3", 
                            "isin" : "US63166UAM36", 
                            "bondType" : "M", 
                            "issueDate" : "2014-11-13", 
                            "maturityDate" : "2049-01-01", 
                            "lastPrice" : 100.555, 
                            "executionPrice" : 100.555, 
                            "executionYield" : 6.581108781952, 
                            "yieldRedemptionPrice" : numberInt(100), 
                            "yieldRedemptionDate" : numberInt(20260101), 
                            "accruedInterest" : 11.911111111111, 
                            "tradeDate" : numberInt(20200303), 
                            "minExecutionQuantity" : numberInt(15), 
                            "maxExecutionQuantity" : numberInt(15), 
                            "maxTotalExecutionQuantity" : numberInt(15), 
                            "settlementDate" : numberInt(20200305), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "mtz" : "EasternUS", 
                            "priceToCurrency" : numberInt(10), 
                            "bidEvalPrice" : 100.33028, 
                            "askEvalPrice" : 100.52161, 
                            "correlationId" : "TRUEMARKETSTPMA89920200303-15:38:18.145", 
                            "triggerType" : "HitLift", 
                            "triggerId" : "T#riu5H-riu7v", 
                            "timestamp" : "20200303-15:38:10.424-00:00", 
                            "eventId" : "GE-6101000a-4241-afbffefe-223", 
                            "type" : "HitLift", 
                            "orderId" : "O#000000002328", 
                            "orderRequestId" : numberInt(730525423), 
                            "pullbackSeconds" : numberInt(1800), 
                            "solId" : "S#000000003309", 
                            "actBy" : "2020-03-03T16:08:10.513Z", 
                            "actionable" : true, 
                            "executionQuantity" : numberInt(15)
                        }, 
                        "orderExecutionSide" : {
                            "side" : "Bid", 
                            "orderId" : "O#000000002328", 
                            "requestId" : numberInt(730525423), 
                            "requestXref" : "965c3c07-e8a6-4528-be51-2eca3d0947d3", 
                            "actorId" : "WBR054655", 
                            "requestType" : "Order", 
                            "portfolioItemId" : numberInt(270349), 
                            "accountId" : "bmd", 
                            "accountXref" : "trading-test", 
                            "accountType" : "Block", 
                            "clientId" : "CLT0001", 
                            "clientDisplayName" : "buy1", 
                            "lastQuantity" : numberInt(15), 
                            "counterParty" : "MKTX", 
                            "contraActorId" : "ACR003535", 
                            "contraClientId" : "CLT0998", 
                            "contraAccountId" : "ACC003623", 
                            "contraAccountType" : "Dealer", 
                            "contraPrice" : 100.555, 
                            "execSide" : "Aggressor", 
                            "lastUpdated" : "2020-03-03T15:38:10.421Z", 
                            "securityKey" : "00000F9C602EFF3B", 
                            "cusip" : "63166UAM3", 
                            "isin" : "US63166UAM36", 
                            "bondType" : "M", 
                            "issueDate" : "2014-11-13", 
                            "maturityDate" : "2049-01-01", 
                            "lastPrice" : 100.555, 
                            "executionPrice" : 100.555, 
                            "executionYield" : 6.581108781952, 
                            "yieldRedemptionPrice" : numberInt(100), 
                            "yieldRedemptionDate" : numberInt(20260101), 
                            "accruedInterest" : 11.911111111111, 
                            "tradeDate" : numberInt(20200303), 
                            "minExecutionQuantity" : numberInt(15), 
                            "maxExecutionQuantity" : numberInt(15), 
                            "maxTotalExecutionQuantity" : numberInt(15), 
                            "settlementDate" : numberInt(20200305), 
                            "currencyCode" : "USD", 
                            "executionPriceType" : "PRICE", 
                            "mtz" : "EasternUS", 
                            "priceToCurrency" : numberInt(10), 
                            "bidEvalPrice" : 100.33028, 
                            "askEvalPrice" : 100.52161, 
                            "executionQuantity" : numberInt(15)
                        }
                    }
                }, 
                "accepted" : true, 
                "seconds" : 0.623721, 
                "correlationId" : "TRUEMARKETSTPMA89920200303-15:38:18.145", 
                "output" : {
                    "executionPrice" : 100.555, 
                    "executionQuantity" : numberInt(15), 
                    "actionXref" : "One-MUNI-2059447-0-0-tphm1", 
                    "executionPrincipal" : 15083.25, 
                    "executionNetMoney" : 15261.91, 
                    "executionInterest" : 178.66
                }
            }
        }
    ]
}];

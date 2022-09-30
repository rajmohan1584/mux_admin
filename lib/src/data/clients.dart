const CLIENTS = [{
    "clientId": "CLTFIDL",
    "dc": "Fidelity",
    "displayName": "Fidelity",
    "orgType": "Buyside"
}, {
    "clientId": "CLTGRTN",
    "dc": "Gurtin",
    "displayName": "Gurtin",
    "orgType": "Buyside"
}, {
    "clientId": "BLACKROCK",
    "dc": "Blackrock",
    "displayName": "BlackRock",
    "orgType": "Buyside"
}, {
    "clientId": "CLT0029",
    "dc": "CWHenderson",
    "displayName": "Henderson",
    "orgType": "Buyside"
}, {
    "clientId": "CLT0028",
   "dc": "Wasmer",
    "displayName": "Wasmer",
    "orgType": "Buyside"
}, {
    "clientId": "CLT2424",
    "dc": "Bracebridge",
    "displayName": "Bracebridge Capital",
    "orgType": "Buyside"
}, {
    "clientId": "CLT2987",
    "dc": "Rockefeller",
    "description": "Rockefeller Capital",
    "displayName": "Rockefeller"
}];

const CONNECTIONS  =  [
  {
    "objectClass": [
      "connection",
      "marketConnection"
    ],
    "dc": "Rockefeller",
    "connectionId": "CONN000036",
    "tcpAddress": "10.0.1.111",
    "description": "Rockefeller",
    "active": true,
    "clusterId": "CLR0042",
    "dn": "dc=Rockefeller,dc=connections,dc=WellsFargo,dc=DEMO,dc=clients,dc=static,dc=tnbt",
    "marketFilter": "bondType is not null",
    "status": "UP",
    "started": "2020-04-05T20:06:22.041Z",
    "socketNo": 87,
    "peerAddress": "10.0.1.111:5013",
    "stopped": "2020-04-05T20:06:22.041Z",
    "_id": 1,
    "displayName": "Rockefeller"
  },
  {
    "objectClass": [
      "connection",
      "marketConnection"
    ],
    "dc": "Bracebridge Capital",
    "connectionId": "CONN000037",
    "tcpAddress": "10.0.1.250",
    "description": "Bracebridge Capital",
    "active": true,
    "clusterId": "CLR0046",
    "dn": "dc=Bracebridge Capital,dc=connections,dc=WellsFargo,dc=DEMO,dc=clients,dc=static,dc=tnbt",
    "marketFilter": "bondType is not null",
    "status": "DOWN",
    "_id": 2,
    "displayName": "Bracebridge Capital"
  }
];

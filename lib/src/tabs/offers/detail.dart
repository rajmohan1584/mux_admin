import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/model/connections.dart';
import 'package:mux_admin/src/model/offers.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/clients/detail.dart';
import 'package:mux_admin/src/tabs/clients/helper.dart';
import 'package:mux_admin/src/tabs/offers/helper.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class OfferDetailTab extends StatefulWidget {
  final Offer _offer;
  const OfferDetailTab(this._offer);

  @override
  _OfferDetailTabState createState() => _OfferDetailTabState();
}

class _OfferDetailTabState extends State<OfferDetailTab> {
  final Clients clients = Clients();
  List<String> connectionIds = [];
  bool loading = true;

  @override
  void initState() {
    onReloadData();
    super.initState();
  }

  setLoading() {
    setState(() => loading = true);
  }

  Future<void> onReloadData([dynamic j]) async {
    setState(() => loading = true);
    Api.getClients().then((jClients) {
      Api.getConnections().then((jConnections) {
        Api.getOfferDetail(widget._offer.requestId).then((j) {
          setState(() {
            clients.reload(jClients);
            clients.mergeConnections(jConnections);
            connectionIds = JSON.pluckStringArray(j, 'connectionId');
            loading = false;
          });
        });
      });
    });
  }

  static Widget routedToTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
      child: Text("Clients Routed To",
          textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0)),
    );
  }

  Widget _buildBody() {
    final offerCardMargin = EdgeInsets.fromLTRB(0, 0, 0, 0);
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OfferHelper.buildOffer(context, widget._offer, offerCardMargin),
          routedToTitle(),
          WIDGETS.hl(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 12),
              itemBuilder: _listBuilder,
            ),
          ),
        ],
      ),
    );
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= connectionIds.length) return Text('null');
    final connectionId = connectionIds[index];

    Client? client = clients.ofConnectionId(connectionId);
    if (client == null) return Text('Bug');

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
            onTap: () {
              Connection? conn = client.connection;
              if (conn != null) {
                String id = conn.connectionId;
                Navigator.of(context)
                    .push<void>(MaterialPageRoute(
                        builder: (context) => ClientDetailTab(client, id)))
                    .then((value) => onReloadData());
              }
            },
            child: ClientsHelper.buildClientSlider(
                context, client, setLoading, onReloadData) //_buildCard(context)
            ));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order')),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    final cusip = widget._offer.cusip;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('$cusip Routes'),
        previousPageTitle: 'Offers',
      ),
      child: _buildBody(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}

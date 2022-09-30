import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/model/solicitations.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/solicitations/helper.dart';
import 'package:mux_admin/src/utils/widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class SolicitationDetailTab extends StatefulWidget {
  final Solicitation _sol;
  const SolicitationDetailTab(this._sol);

  @override
  _SolicitationDetailTabState createState() => _SolicitationDetailTabState();
}

class _SolicitationDetailTabState extends State<SolicitationDetailTab> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  static Widget routedToTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
      child: Text("TODO",
          textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0)),
    );
  }

  Widget _buildBody() {
    final tsolCardMargin = EdgeInsets.fromLTRB(0, 0, 0, 0);
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SolicitationHelper.buildSolicitation(
              context, widget._sol, tsolCardMargin),
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
    if (index >= 0) return Text('null');

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(onTap: () {}, child: Text('TODO')));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order')),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    final solId = widget._sol.displaySolId;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Solicitation - $solId'),
        previousPageTitle: 'Sol',
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

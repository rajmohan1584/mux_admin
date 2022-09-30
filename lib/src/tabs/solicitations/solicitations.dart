import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/solicitations.dart';
import 'package:mux_admin/src/platform/activity.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/solicitations/detail.dart';
import 'package:mux_admin/src/tabs/solicitations/helper.dart';

class SolicitationsTab extends StatefulWidget {
  static const title = 'Solicitations';
  static const androidIcon = Icon(Icons.music_note);

  const SolicitationsTab({Key? key, this.androidDrawer}) : super(key: key);

  final Widget? androidDrawer;

  @override
  _SolicitationsTabState createState() => _SolicitationsTabState();
}

class _SolicitationsTabState extends State<SolicitationsTab> {
  final List<Solicitation> sols = [];
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();
  bool loading = true;

  @override
  void initState() {
    setState(() {});
    onReloadData();
    super.initState();
  }

  Future<void> onReloadData() async {
    setState(() => loading = true);
    Api.searchSolicitations().then((j) {
      setState(() {
        sols.removeRange(0, sols.length);
        for (int i = 0; i < j.length; i++) {
          sols.add(Solicitation.fromJson(j[i]));
        }
        loading = false;
      });
    });
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= sols.length) return Text('null');
    Solicitation sol = sols[index];

    return SafeArea(
        top: false,
        bottom: false,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push<void>(MaterialPageRoute(
                  builder: (context) => SolicitationDetailTab(sol)));
            },
            child: SolicitationHelper.buildSolicitation(
                context, sol) //_buildCard(context)
            ));
  }

  // ===========================================================================
  // Non-shared code below because:
  // - Android and iOS have different scaffolds
  // - There are differenc items in the app bar / nav bar
  // - Android has a hamburger drawer, iOS has bottom tabs
  // - The iOS nav bar is scrollable, Android is not
  // - Pull-to-refresh works differently, and Android has a button to trigger it too
  //
  // And these are all design time choices that doesn't have a single 'right'
  // answer.
  // ===========================================================================
  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SolicitationsTab.title),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async =>
                await _androidRefreshKey.currentState!.show(),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //TMAlert.alert(context, 'title', 'message');
            },
          ),
        ],
      ),
      drawer: widget.androidDrawer,
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: onReloadData,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 12),
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    Widget trailing = loading
        ? TMActivityIndicator()
        : CupertinoButton(
            padding: EdgeInsets.zero,
            child: Icon(CupertinoIcons.refresh),
            onPressed: () {
              onReloadData();
            });

    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          trailing: trailing,
        ),
        CupertinoSliverRefreshControl(
          onRefresh: onReloadData,
        ),
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 12),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_listBuilder),
            ),
          ),
        ),
      ],
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

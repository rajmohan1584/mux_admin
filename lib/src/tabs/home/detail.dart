import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/model/clients.dart';
import 'package:mux_admin/src/model/history_chart.dart';
import 'package:mux_admin/src/model/home.dart';
import 'package:mux_admin/src/platform/activity.dart';
import 'package:mux_admin/src/platform/widget.dart';
import 'package:mux_admin/src/tabs/clients/helper.dart';
import 'package:mux_admin/src/tabs/home/column_selector.dart';
import 'package:mux_admin/src/utils/format.dart';
import 'package:mux_admin/src/utils/screen.dart';
import 'package:mux_admin/src/utils/widgets.dart';

/// Page shown when a card in the songs tab is tapped.
///
/// On Android, this page sits at the top of your app. On iOS, this page is on
/// top of the songs tab's content but is below the tab bar itself.
class HomeDetailTab extends StatefulWidget {
  //HistoryChart _hc = HistoryChart();
  //String _connectionName = "";
  final ConnectionStats _connStats;

  HomeDetailTab(this._connStats);

  /*
  factory HomeDetailTab.fromJson(j) {
    HomeDetailTab hdt = HomeDetailTab();
    hdt._hc = HistoryChart.fromJson(j['history']);
    hdt._connectionName = j['name'];
    return hdt;
  }
  */

  @override
  _HomeDetailTabState createState() => _HomeDetailTabState();
}

class _HomeDetailTabState extends State<HomeDetailTab> {
  bool loading = true;
  int selectedIndex = 5;//'total_initial_count';
  final Clients clients = Clients();

  @override
  void initState() {
    onReloadData();
    super.initState();
  }

  Future<void> onReloadData([dynamic j]) async {
    Api.getClients().then((jClients) {
      Api.getConnections().then((jConnections) {
        setState(() {
          clients.reload(jClients);
          clients.mergeConnections(jConnections);
          loading = false;
        });
      });
    });
  }

  onColumnIndexChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _buildBody() {
    if (loading) {
      return Center(child:TMActivityIndicator());
    }

    HistoryChart hc = widget._connStats.history;
    final columns = hc.getColumnsSorted();
    if (columns == null || columns.length == 0) {
      return Center(child: Text("History unavailable"));
    }
    String selectedColumn = columns[selectedIndex];
    String title = FMT.startCase(selectedColumn);
    
    Widget bottomControl = Expanded(
      child: Align(
        alignment: Alignment(0.5, 0),
        child: ColumnSelector(hc.getColumnsNamesSorted(), selectedIndex, onColumnIndexChanged))
    );

    final clientCardMargin = EdgeInsets.fromLTRB(0, 0, 0, 0);
    final client = clients.ofName(widget._connStats.name);
    Widget clientCard = client == null ?
      Text("loading...") :
      ClientsHelper.buildClientCard(context, client, clientCardMargin);

    return SafeArea(
      bottom:false,
      left: false,
      right: false,
      child: Column(
        children: <Widget>[
          clientCard ,
          WIDGETS.detailPageTitle(title),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width:SCREEN.percentWidth(90),
              height:SCREEN.percentHeight(30),
              child: hc.getColumnChart(selectedColumn)//SimpleBarChart.withSampleData()
            ),
          ),
          bottomControl
        ],
      )
    );
  }

/*
  Widget _buildBody2() {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Title'),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 16, bottom: 8),
                    child: Text(
                      'TODO:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }
                // Just a bunch of boxes that simulates loading song choices.
                return SongPlaceholderTile();
              },
            ),
          ),
        ],
      ),
    );
  }
*/
  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('detail')),
      body: _buildBody(),
    );
  }

  Widget _buildIos(BuildContext context) {
    String name = widget._connStats.name;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('History - $name'),
        previousPageTitle: 'Home',
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

class SongPlaceholderTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          children: [
            Container(
              color: Colors.grey[400],
              width: 130,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 9,
                    margin: EdgeInsets.only(right: 60),
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 9,
                    margin: EdgeInsets.only(right: 20, top: 8),
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 9,
                    margin: EdgeInsets.only(right: 40, top: 8),
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 9,
                    margin: EdgeInsets.only(right: 80, top: 8),
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 9,
                    margin: EdgeInsets.only(right: 50, top: 8),
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

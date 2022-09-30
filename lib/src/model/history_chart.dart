import 'package:charts_flutter/flutter.dart' as charts;
import 'package:mux_admin/src/utils/format.dart';
import 'package:mux_admin/src/utils/json.dart';

class BarXY { final String x; final double y; BarXY(this.x, this.y);}

const xlabel = ['8am', '9', '10', '11', '12', '1pm', '2', '3', '4', '5'];

final Map<String, String> hourMap = const <String, String>{
  '1': 'Jan', '2': 'Feb', '3': 'Mar', '4': 'Apr', '5': 'May', '6': 'Jun',
  '7': 'Jul', '8': 'Aug', '9': 'Sep', '10': 'Oct', '11': 'Nov', '12': 'Dec',
};

class HistoryColumn {
  String _name = "";
  List<double> _values = List<double>();

  String get name => _name;
  List<double> get values => _values;

  HistoryColumn(this._name, this._values);
}

class HistoryChart {
  Map hj;
  List<HistoryColumn> _columns = List<HistoryColumn>();

  HistoryChart();

  addColumn (HistoryColumn hc) {
    _columns.add(hc);
  }

  List<String> getColumnsSorted() {
    List<String> columns = [];
    _columns.forEach((c) {
      columns.add(c.name);
    });
    columns.sort();
    return columns;
  }

  List<String> getColumnsNamesSorted() {
    List<String> columns = getColumnsSorted();
    for (var i=0; i<columns.length; i++) {
      columns[i] = FMT.startCase(columns[i]);
    }
    return columns;
  }

  factory HistoryChart.fromJson(hj) {
    HistoryChart hc = HistoryChart();

    final cols = hj['columns'];
    final vals = hj['values'];
    if (cols == null || cols.length <= 1) return hc;

    for (var i=1; i<cols.length; i++) {
      final name = cols[i];
      final List<double> values = List<double>();

      for (var vi=0; vi < vals.length; vi++) {
        final v = vals[vi];
        double dv = JSON.parseDouble(v, i);
        values.add(dv);
      }

      hc.addColumn(HistoryColumn(name, values));
    }
    return hc;
  }

  HistoryColumn _findHistoryColumn(String column) {
    for (var i=0; i<_columns.length; i++) {
      final hc = _columns[i];
      if (hc.name == column) return hc;
    }

    return null;
  }

  charts.BarChart getColumnChart(String column) {
    List <BarXY> xy = [];

    final cd = charts.Series<BarXY, String> (
      id: 'Column Chart',
      domainFn: (BarXY d, _) => d.x,
      measureFn: (BarXY d, _) => d.y,
      data: xy);

    final seriesList = [cd];

    final chart = charts.BarChart(
      seriesList,
      animate: true);

    HistoryColumn hc = _findHistoryColumn(column);

    hc.values.forEach((v) {
      final i = xy.length;
      final x = xlabel[i];
      final y = v;
      xy.add(BarXY(x, y));
    });

    return chart;
  }
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyLineChart extends StatefulWidget {
  MyLineChart({super.key});

  @override
  State<MyLineChart> createState() => _LineChartState();
}

class _LineChartState extends State<MyLineChart> {
  TooltipBehavior tooltip = TooltipBehavior(enable: true);
  late List<MyChartModel> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = [
      MyChartModel(x: "Ocak", y: 100),
      MyChartModel(x: "Subat", y: 45),
      MyChartModel(x: "Mart", y: 70)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        tooltipBehavior: tooltip,
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: 200,
          interval: 20,
        ),
        series: <CartesianSeries<MyChartModel, String>>[
          ColumnSeries<MyChartModel, String>(
            dataSource: data,
            xValueMapper: (MyChartModel data, index) {
              return data.x;
            },
            yValueMapper: (MyChartModel data, index) {
              return data.y;
            },
            color: Colors.red,
          )
        ]);
  }
}

class MyChartModel {
  final String x;
  final int y;
  MyChartModel({required this.x, required this.y});
}

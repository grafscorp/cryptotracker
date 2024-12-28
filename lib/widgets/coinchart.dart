import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';

class CoinChart extends StatelessWidget {
  CoinChart({super.key});

  @override
  Widget build(BuildContext context) {
    // return LineChart(
    //   painter: LineChartPainter(
    //     lineChartContainer: LineChartTopContainer(
    //       chartData: getVerticalBarChart(getChartData()),
    //     ),
    //   ),
    // );
    return getVerticalBarChart(getChartData());
  }

  ChartData getChartData() {
    //TEST VALUE CHARTS
    var rnd = Random();

    ChartData chartData = ChartData(
      dataRows: [
        [
          rnd.nextDouble() * 500,
          rnd.nextDouble() * 500,
          rnd.nextDouble() * 500,
          rnd.nextDouble() * 500,
          rnd.nextDouble() * 500
        ],
        [
          -rnd.nextDouble() * 500,
          -rnd.nextDouble() * 500,
          -rnd.nextDouble() * 500,
          -rnd.nextDouble() * 500,
          -rnd.nextDouble() * 500
        ],
      ],
      chartOptions: const ChartOptions.noLabels(),
      xUserLabels: const [
        '5HoursAgo',
        '4HoursAgo',
        '3HoursAgo',
        '2HoursAgo',
        'HourAgo'
      ],
      dataRowsLegends: const [
        'Lower zero',
        "Greater zero",
      ],
      dataRowsColors: const [
        Colors.green,
        Colors.red,
      ],
    );
    return chartData;
  }

  VerticalBarChart getVerticalBarChart(ChartData chartData) {
    var verticalBarChartContainer =
        VerticalBarChartTopContainer(chartData: chartData);
    var verticalBarChart = VerticalBarChart(
      painter: VerticalBarChartPainter(
          verticalBarChartContainer: verticalBarChartContainer),
    );
    return verticalBarChart;
  }
}

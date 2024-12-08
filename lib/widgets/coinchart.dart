import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';

class CoinChart extends StatelessWidget {
  CoinChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      painter: LineChartPainter(
        lineChartContainer: LineChartTopContainer(
          chartData: getChartData(),
        ),
      ),
    );
  }

  ChartData getChartData() {
    ChartData chartData = ChartData(
      dataRows: const [
        [10.0, 21.0, 12.0]
      ],
      chartOptions: const ChartOptions.noLabels(),
      xUserLabels: const ['Monday', 'SAS', 'wendsay'],
      dataRowsLegends: const ['Coins Change Week'],
    );

    return chartData;
  }
}

import 'package:algo_project/parameters.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyChart extends StatefulWidget {
  final Function(int)? fibOf;
  const MyChart({super.key, required this.fibOf});

  @override
  MyChartState createState() => MyChartState();
}

class MyChartState extends State<MyChart> {
  List<FlSpot> _spots = [];

  @override
  void initState() {
    super.initState();
    _generatePerformanceData();
  }

  void _generatePerformanceData() async {
    List<FlSpot> spots = [];

    for (int n = 0; n <= Parameters.n; n++) {
      final stopwatch = Stopwatch()..start();
      widget.fibOf!(n);
      stopwatch.stop();

      double timeInMicros = stopwatch.elapsedMicroseconds.toDouble();

      spots.add(FlSpot(n.toDouble(), timeInMicros));
    }

    setState(() {
      _spots = spots;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _spots.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              '${value.toStringAsFixed(0)} µs',
                              style: TextStyle(fontSize: 10),
                            );
                          },
                          reservedSize: 50,
                        ),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: true),
                      ),
                    ),
                    borderData: FlBorderData(show: true),
                    minX: 0,
                    maxX: 40,
                    minY: 0,
                    lineBarsData: [
                      LineChartBarData(
                        spots: _spots,
                        isCurved: true,
                        color: Colors.red,
                        barWidth: 3,
                        dotData: FlDotData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}

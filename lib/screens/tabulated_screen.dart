import 'package:algo_project/logic/algorithms.dart';
import 'package:algo_project/widgets/my_chart.dart';
import 'package:flutter/material.dart';

class TabulatedScreen extends StatefulWidget {
  const TabulatedScreen({super.key});

  @override
  State<TabulatedScreen> createState() => _TabulatedScreenState();
}

class _TabulatedScreenState extends State<TabulatedScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade50,
          title: const Text('Tabulated Fibonacci Chart'),
        ),
        body: Center(child: MyChart(fibOf: Algorithms.tabulatedFib)),
      ),
    );
  }
}

import 'package:algo_project/logic/algorithms.dart';
import 'package:algo_project/parameters.dart';
import 'package:algo_project/widgets/my_chart.dart';
import 'package:flutter/material.dart';

class RecursiveScreen extends StatefulWidget {
  const RecursiveScreen({super.key});

  @override
  State<RecursiveScreen> createState() => _RecursiveScreenState();
}

class _RecursiveScreenState extends State<RecursiveScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade50,
          title: Text(
            'Recursive Fibonacci Chart',
            style: TextStyle(fontSize: 25, color: Colors.blue[600]),
          ),
        ),
        body: Center(
          child:
              (Parameters.n <= 40)
                  ? MyChart(fibOf: Algorithms.recursiveFib)
                  : Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      "Recursive Fibonacci is too slow\n for n > 40, because it has exponential time complexity.",
                      style: const TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ),
        ),
      ),
    );
  }
}

import 'package:algo_project/logic/algorithms.dart';

import 'package:algo_project/widgets/my_chart.dart';
import 'package:flutter/material.dart';

class MemoizedScreen extends StatefulWidget {
  const MemoizedScreen({super.key});

  @override
  State<MemoizedScreen> createState() => _MemoizedScreenState();
}

class _MemoizedScreenState extends State<MemoizedScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade50,
          title: const Text('Memoized Fibonacci Chart'),
        ),
        body: Center(child: MyChart(fibOf: Algorithms.memoizedFib)),
      ),
    );
  }
}

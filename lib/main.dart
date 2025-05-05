import 'package:algo_project/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FibonacciApp());
}

class FibonacciApp extends StatelessWidget {
  const FibonacciApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fibonacci Numbers',
      home: const FibonacciHomePage(),
    );
  }
}

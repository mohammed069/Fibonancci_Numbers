import 'package:algo_project/logic/functions.dart';
import 'package:algo_project/parameters.dart';
import 'package:algo_project/screens/memoized_screen.dart';
import 'package:algo_project/screens/recursive_screen.dart';
import 'package:algo_project/screens/tabulated_screen.dart';
import 'package:algo_project/widgets/my_elevated_button.dart';
import 'package:algo_project/widgets/my_text.dart';
import 'package:flutter/material.dart';

class FibonacciHomePage extends StatefulWidget {
  const FibonacciHomePage({super.key});

  @override
  State<FibonacciHomePage> createState() => _FibonacciHomePageState();
}

class _FibonacciHomePageState extends State<FibonacciHomePage> {
  final _textFormKey = GlobalKey<FormState>();

  void calculateAndCompare2() {
    setState(() {
      //setState is a function in flutter is work at first
      Parameters.result = ''; // Clear the last result
      Parameters.result1 = ''; // Clear the last result
      Parameters.result2 = ''; // Clear the last result
      Parameters.result3 = ''; // Clear the last result
      Parameters.result4 = ''; // Clear the last result
      Parameters.recursiveTime = null; // Reset times
      Parameters.memoTime = null;
      Parameters.tabTime = null;
    });

    Functions.calculateAndCompare(); // Call the function to calculate and compare

    setState(() {
      Parameters.result = Parameters.buffer.toString();
      Parameters.result1 = Parameters.buffer1.toString();
      Parameters.result2 = Parameters.buffer2.toString();
      Parameters.result3 = Parameters.buffer3.toString();
      Parameters.result4 = Parameters.buffer4.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          'Fibonacci Numbers',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.blue.shade500,
          ),
        ),
        backgroundColor: Colors.blue.shade50,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _textFormKey,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a positeve integer number';
                  } else if (int.tryParse(value) == null ||
                      int.parse(value) < 0) {
                    return 'Please enter a valid positive integer';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Enter n ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.blue.shade100,
                  filled: true,
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    _textFormKey.currentState!.validate();
                  }
                  Parameters.n = int.tryParse(value) ?? 0;
                },
              ),
            ),
            const SizedBox(height: 16),
            MyElevatedButton(
              onPressed: () {
                if (_textFormKey.currentState!.validate()) {
                  calculateAndCompare2();
                }
              },
              text: 'Calculate',
            ),

            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: ListView(
                  children: [
                    SelectableText(
                      Parameters.result,
                      style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                    ),
                    MyText(text: Parameters.result1, page: RecursiveScreen()),
                    MyText(text: Parameters.result2, page: MemoizedScreen()),
                    MyText(text: Parameters.result3, page: TabulatedScreen()),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

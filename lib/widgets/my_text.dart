import 'package:algo_project/parameters.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Widget page;

  const MyText({super.key, required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SelectableText(
            text,
            style: TextStyle(fontSize: 20, color: Colors.blue[900]),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              child: Text(
                Parameters.result4, // result4 is more info
                style: TextStyle(color: Colors.blue[300], fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

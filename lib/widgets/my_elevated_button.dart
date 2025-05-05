import 'package:flutter/material.dart';

class MyElevatedButton extends StatefulWidget {
  final Function()? onPressed;
  final String? text;

  const MyElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade300,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          widget.text!,
          style: TextStyle(color: Colors.blue.shade900, fontSize: 16),
        ),
      ),
    );
  }
}

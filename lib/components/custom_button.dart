import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final EdgeInsets? margin;
  const CustomButton({super.key, required this.text, required this.onPressed, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
          onPressed: onPressed, child: Text(text, style: TextStyle(fontSize: 18.0, color: Colors.green),)),
    );
  }
}

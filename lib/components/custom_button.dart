import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.blueAccent,
    this.textColor = Colors.white,
    required Text child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}

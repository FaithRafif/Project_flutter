import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextAlign textAlign;
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.textAlign = TextAlign.start,
  });
  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign, style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color,
      ),
    );
  }
}
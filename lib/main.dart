import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/calculator_page.dart';
import 'package:testflutter/login_Page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CalculatorPage(),
    );
  }
}
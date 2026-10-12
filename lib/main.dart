import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/login_Page.dart';
import 'package:testflutter/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter GetX",
      initialRoute: Routes.list_makanan,
      getPages: Routes.myPages,

    );
  }
}
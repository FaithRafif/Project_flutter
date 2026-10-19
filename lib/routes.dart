import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/calculator_page.dart';
import 'package:testflutter/pages/confirm_registration_page.dart';
import 'package:testflutter/pages/detail_makanan_page.dart';
import 'package:testflutter/pages/list_makanan_page.dart';
import 'package:testflutter/pages/login_Page.dart';
import 'package:testflutter/pages/registration_page.dart';

class Routes {
  static const String calculator = "/calculator";
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String login_page = "/login_page";

  static final myPages = [
    GetPage(
        name: calculator,
        page: () => CalculatorPage()
    ),
    GetPage(
        name: registration, page: () => RegistrationPage()
    ),
    GetPage(
      name: confirm_registration,
      page: () => Confirm_Registration_Page(),
    ),
    GetPage(
      name: list_makanan,
      page: () => ListMakananPage(),
    ),
    GetPage(
      name: detail_makanan,
      page: () => DetailMakananPage(),
    ),
    GetPage(
      name: login_page,
      page: () => LoginPage(),
    ),
  ];
}

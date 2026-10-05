import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/pages/confirm_registration_page.dart';
import 'package:testflutter/pages/registration_page.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(
      name: confirm_registration,
      page: () => Confirm_Registration_Page(),
    ),
  ];
}

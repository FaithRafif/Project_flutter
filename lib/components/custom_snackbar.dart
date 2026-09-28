import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static void show({
    required String title,
    required String message,
    bool isError = true,
  }) {
    Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM, backgroundColor: isError ? Colors.red : Colors.green, colorText: Colors.white,
      margin: const EdgeInsets.all(12),
      borderRadius: 8,
    );
  }
}
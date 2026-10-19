import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(String txt1, String txt2) {
    if (txt1.trim().isEmpty && txt2.trim().isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }
    double angka1 = double.tryParse(txt1) ?? 0;
    double angka2 = double.tryParse(txt2) ?? 0;
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
  }

  void kurang(String txt1, String txt2) {
    if (txt1.trim().isEmpty && txt2.trim().isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }
    double angka1 = double.tryParse(txt1) ?? 0;
    double angka2 = double.tryParse(txt2) ?? 0;
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
  }

  void kali(String txt1, String txt2) {
    if (txt1.trim().isEmpty && txt2.trim().isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    double angka1 = double.tryParse(txt1) ?? 0;
    double angka2 = double.tryParse(txt2) ?? 0;

    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
  }

  void bagi(String txt1, String txt2) {
    if (txt1.trim().isEmpty && txt2.trim().isEmpty) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }
    double angka1 = double.tryParse(txt1) ?? 0;
    double angka2 = double.tryParse(txt2) ?? 0;
    if (angka1 == 0 || angka2 == 0) {
      Get.snackbar(
        "Peringatan",
        "Tidak boleh ada angka 0",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orangeAccent,
        colorText: Colors.white,
      );
    } else {
      double hasilBagi = angka1 / angka2;
      hasilHitung.value = hasilBagi;
    }
  }
}
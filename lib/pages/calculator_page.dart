import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_button.dart';
import 'package:testflutter/components/custom_text.dart';
import 'package:testflutter/components/custom_textField.dart';
import 'package:testflutter/controllers/calculator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController controller = Get.put(CalculatorController());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          "My Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             SizedBox(height: 10),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: "Angka Pertama",
                      controller: txtangka1,
                      isDigitsOnly: true,
                      keyboardType: TextInputType.number,
                    ),
                    CustomTextField(
                      hintText: "Angka Kedua",
                      controller: txtangka2,
                      isDigitsOnly: true,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                CustomButton(
                  text: "+",
                  onPressed: () => controller.tambah(txtangka1.text, txtangka2.text),
                ),
                const SizedBox(width: 8),
                CustomButton(
                  text: "-",
                  onPressed: () => controller.kurang(txtangka1.text, txtangka2.text),
                ),
                const SizedBox(width: 8),
                CustomButton(
                  text: "x",
                  onPressed: () => controller.kali(txtangka1.text, txtangka2.text),
                ),
                const SizedBox(width: 8),
                CustomButton(
                  text: "/",
                  onPressed: () => controller.bagi(txtangka1.text, txtangka2.text),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                children: [
                  const CustomText(
                    text: "Hasil Perhitungan",
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 8),
                  Obx(
                        () => CustomText(
                      text: controller.hasilHitung.value.toString(),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
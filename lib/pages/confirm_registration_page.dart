import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_button.dart';
import 'package:testflutter/components/custom_text.dart';
import 'package:testflutter/controllers/confrim_registration_controller.dart';

class Confirm_Registration_Page extends StatelessWidget {
  Confirm_Registration_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Konfirmasi Data"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding:  EdgeInsets.fromLTRB(20,24,20,24),
        child: Column(
          children: [
            CustomText(text: controller.namaLengkap),
            CustomText(text: "@${controller.username}"),
            const SizedBox(height: 24),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Email: ${controller.email}", fontSize: 15, fontWeight: FontWeight.w600,),
                     Divider(height: 20),
                    CustomText(text: "Password: ${controller.password}", fontSize: 15, fontWeight: FontWeight.w600,),
                     Divider(height: 20),
                    CustomText(text: "Konfirmasi Password: ${controller.confirmPassword}", fontSize: 15, fontWeight: FontWeight.w600,),
                     Divider(height: 20),
                    CustomText(text: "No hp: ${controller.noHp}", fontSize: 15, fontWeight: FontWeight.w600,),
                     Divider(height: 20),
                    CustomText(text: "Tanggal Lahir: ${controller.tanggalLahir}", fontSize: 15, fontWeight: FontWeight.w600,),
                     Divider(height: 20),
                    CustomText(text: "Jenis Kelamin: ${controller.jenisKelamin}", fontSize: 15, fontWeight: FontWeight.w600,),
                     Divider(height: 20),
                    CustomText(text: "Alamat: ${controller.alamat}", fontSize: 15, fontWeight: FontWeight.w600,),
                  ],
                ),
              ),
            ),
             SizedBox(height: 24),
              CustomButton(
                text: 'Selesai & Kembali',
                onPressed: () {
                  Get.back();
                },
              ),
          ],
        ),
      ),
    );
  }
}
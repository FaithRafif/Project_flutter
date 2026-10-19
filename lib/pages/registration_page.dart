import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_button.dart';
import 'package:testflutter/components/custom_text.dart';
import 'package:testflutter/components/custom_textField.dart';

import '../components/custom_dropdown.dart';
import '../controllers/registration_controller.dart';
import '../routes.dart';

class RegistrationPage extends StatelessWidget {
  final RegistrationController controller = Get.put(RegistrationController());
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    final txtUsername = TextEditingController();
    final txtNamaLengkap = TextEditingController();
    final txtEmail = TextEditingController();
    final txtPassword = TextEditingController();
    final txtConfirmPassword = TextEditingController();
    final txtNoHp = TextEditingController();
    final txtTanggalLahir = TextEditingController();
    final txtAlamat = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Form Registrasi"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: "Buat Akun Baru",fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87,),
            const SizedBox(height: 2),
            CustomText(text: "Lengkapi data diri Anda di bawah ini", fontSize: 13,color: Colors.grey,),
            const SizedBox(height: 12),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Column(
                  children: [
                    CustomTextField(
                      controller: txtUsername,
                      hintText: "Username",
                      keyboardType: TextInputType.text,
                      isDigitsOnly: false,
                    ),
                    CustomTextField(
                      controller: txtNamaLengkap,
                      hintText: "Nama Lengkap",
                      keyboardType: TextInputType.name,
                      isDigitsOnly: false,
                    ),
                    CustomTextField(
                      controller: txtEmail,
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      isDigitsOnly: false,
                    ),
                    CustomTextField(
                      controller: txtPassword,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      isDigitsOnly: false,
                      isPassword: true,
                    ),
                    CustomTextField(
                      controller: txtConfirmPassword,
                      hintText: "Konfirmasi Password",
                      keyboardType: TextInputType.visiblePassword,
                      isDigitsOnly: false,
                      isPassword: true,
                    ),
                    CustomTextField(
                      controller: txtNoHp,
                      hintText: "Nomor HP",
                      keyboardType: TextInputType.phone,
                      isDigitsOnly: true,
                    ),
                    CustomTextField(
                      controller: txtTanggalLahir,
                      hintText: "Tanggal Lahir (YYYY-MM-DD)",
                      keyboardType: TextInputType.datetime,
                      isDigitsOnly: false,
                    ),
                    Obx(() => CustomDropdown(
                      selectedValue: controller.selectedJenisKelamin.value.isEmpty
                          ? null
                          : controller.selectedJenisKelamin.value,
                      listItems: controller.listJenisKelamin,
                      onChanged: (newValue) {
                        controller.setJenisKelamin(newValue);
                      },
                    )),
                    CustomTextField(
                      controller: txtAlamat,
                      hintText: "Alamat",
                      keyboardType: TextInputType.multiline,
                      isDigitsOnly: false,
                    ),
                  ],
                ),
              ),
            ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Daftar Sekarang",
                onPressed: () {
                  Get.toNamed(
                    Routes.confirm_registration,
                    arguments: {
                      'username': txtUsername.text,
                      'nama_lengkap': txtNamaLengkap.text,
                      'email': txtEmail.text,
                      'password': txtPassword.text,
                      'confirm_password': txtConfirmPassword.text,
                      'no_hp': txtNoHp.text,
                      'tanggal_lahir': txtTanggalLahir.text,
                      'jenis_kelamin': controller.selectedJenisKelamin.value,
                      'alamat': txtAlamat.text,
                    },
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
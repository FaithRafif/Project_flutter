import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_button.dart';
import 'package:testflutter/components/custom_textField.dart';

import '../components/custom_dropdown.dart';
import '../controllers/registration_controller.dart';
import '../routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

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
    final txtFotoProfil = TextEditingController();
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Column(
          children: [
            const Icon(
              Icons.person_add_alt_1_rounded,
              size: 64,
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 8),
            const Text(
              "Buat Akun Baru",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Lengkapi data diri Anda di bawah ini",
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomTextField(
                      controller: txtUsername,
                      hintText: "Username",
                      keyboardType: TextInputType.text,
                      isDigitsOnly: false,
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      controller: txtNamaLengkap,
                      hintText: "Nama Lengkap",
                      keyboardType: TextInputType.name,
                      isDigitsOnly: false,
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      controller: txtEmail,
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      isDigitsOnly: false,
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      controller: txtPassword,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      isDigitsOnly: false,
                      isPassword: true,
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      controller: txtConfirmPassword,
                      hintText: "Konfirmasi Password",
                      keyboardType: TextInputType.visiblePassword,
                      isDigitsOnly: false,
                      isPassword: true,
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      controller: txtNoHp,
                      hintText: "Nomor HP",
                      keyboardType: TextInputType.phone,
                      isDigitsOnly: true,
                    ),
                    const SizedBox(height: 14),

                    CustomTextField(
                      controller: txtTanggalLahir,
                      hintText: "Tanggal Lahir (YYYY-MM-DD)",
                      keyboardType: TextInputType.datetime,
                      isDigitsOnly: false,
                    ),
                    const SizedBox(height: 14),

                    Obx(
                      () => CustomDropdown(
                        value: controller.selectedJenisKelamin.value,
                        items: controller.listJenisKelamin,
                        hintText: "Pilih Jenis Kelamin",
                        onChanged: (newValue) {
                          controller.setJenisKelamin(newValue);
                        },
                      ),
                    ),
                    const SizedBox(height: 14),
                    CustomTextField(
                      controller: txtFotoProfil,
                      hintText: "URL Foto Profil",
                      keyboardType: TextInputType.url,
                      isDigitsOnly: false,
                    ),
                    const SizedBox(height: 14),

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
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton(
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
                      'foto_profil': txtFotoProfil.text,
                      'alamat': txtAlamat.text,
                    },
                  );
                },
                child: const Text(
                  "Daftar Sekarang",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

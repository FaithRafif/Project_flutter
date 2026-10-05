import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_button.dart';
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blueAccent.shade100,
                    backgroundImage: controller.fotoProfil.isNotEmpty
                        ? NetworkImage(controller.fotoProfil)
                        : null,
                    child: controller.fotoProfil.isEmpty
                        ? const Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.white,
                          )
                        : null,
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Text(
              controller.namaLengkap.isNotEmpty ? controller.namaLengkap : "-",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              "@${controller.username.isNotEmpty ? controller.username : '-'}",
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildDetailRow(
                      Icons.email_outlined,
                      "Email",
                      controller.email,
                    ),
                    const Divider(),
                    _buildDetailRow(
                      Icons.lock_outline,
                      "Password",
                      controller.password,
                    ),
                    const Divider(),
                    _buildDetailRow(
                      Icons.lock_reset,
                      "Konfirmasi Password",
                      controller.confirmPassword,
                    ),
                    const Divider(),
                    _buildDetailRow(
                      Icons.phone_android,
                      "Nomor HP",
                      controller.noHp,
                    ),
                    const Divider(),
                    _buildDetailRow(
                      Icons.cake_outlined,
                      "Tanggal Lahir",
                      controller.tanggalLahir,
                    ),
                    const Divider(),
                    _buildDetailRow(
                      Icons.wc,
                      "Jenis Kelamin",
                      controller.jenisKelamin,
                    ),
                    const Divider(),
                    _buildDetailRow(
                      Icons.home_outlined,
                      "Alamat",
                      controller.alamat,
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
                text: 'Selesai & Kembali',
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  "Selesai & Kembali",
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

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 22, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value.isNotEmpty ? value : "-",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

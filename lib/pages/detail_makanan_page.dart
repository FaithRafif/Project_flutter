import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_text.dart';

import '../controllers/detail_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    final makanan = controller.makanan;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F4),
      appBar: AppBar(
        title: const Text("Detail Makanan"),
        centerTitle: true,
        backgroundColor: const Color(0xFF2E7D32),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: double.infinity,
              height: 220,
              child: Image.network(
                makanan.linkgambar,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.restaurant, color: Color(0xFF2E7D32)),
            title: CustomText(
              text: "Nama",
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
            subtitle: CustomText(
              text: makanan.namaMakanan,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.payments, color: Color(0xFF2E7D32)),
            title: CustomText(
              text: "Harga",
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
            subtitle: CustomText(
              text: "Rp ${makanan.harga}",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.amber),
            title: CustomText(
              text: "Rating",
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
            subtitle: CustomText(
              text: "${makanan.review}",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.description, color: Color(0xFF2E7D32)),
            title: CustomText(
              text: "Deskripsi",
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
            subtitle: CustomText(
              text: makanan.deksripsi,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
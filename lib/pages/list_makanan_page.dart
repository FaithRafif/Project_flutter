import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/components/custom_text.dart';
import '../controllers/list_makanan_controller.dart';
import '../routes.dart';

class ListMakananPage extends StatelessWidget {
  final controller = Get.put(ListMakananController());

  ListMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
              () => ListView.builder(
            itemCount: controller.dataMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.dataMakanan[index];
              return Dismissible(
                key: Key(makanan.namaMakanan),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Get.toNamed(
                        Routes.detail_makanan,
                        arguments: makanan,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade200,
                          ),
                          child: Image.network(
                            makanan.linkgambar,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: CustomText(text: makanan.namaMakanan,fontWeight: FontWeight.bold,),
                        subtitle: CustomText(text: makanan.harga,color: Colors.grey.shade600,fontSize: 14),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
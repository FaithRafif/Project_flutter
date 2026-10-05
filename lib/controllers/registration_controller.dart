import 'package:get/get.dart';

class RegistrationController extends GetxController {
  var selectedJenisKelamin = ''.obs;

  final List<String> listJenisKelamin = ['Laki-laki', 'Perempuan'];

  void setJenisKelamin(String? value) {
    if (value != null) {
      selectedJenisKelamin.value = value;
    }
  }
}
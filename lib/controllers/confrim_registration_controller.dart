import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username ;
  late String namaLengkap ;
  late String email ;
  late String password;
  late String confirmPassword ;
  late String noHp;
  late String tanggalLahir;
  late String jenisKelamin;
  late String alamat;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
      username = arguments['username'];
      namaLengkap = arguments['nama_lengkap'];
      email = arguments['email'] ;
      password = arguments['password'];
      confirmPassword = arguments['confirm_password'];
      noHp = arguments['no_hp'];
      tanggalLahir = arguments['tanggal_lahir'];
      jenisKelamin = arguments['jenis_kelamin'];
      alamat = arguments['alamat'];
    }
  }

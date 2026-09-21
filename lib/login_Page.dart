import 'package:flutter/material.dart';
import 'package:testflutter/components/custom_button.dart';
import 'package:testflutter/components/custom_text.dart';
import 'package:testflutter/components/custom_textField.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ini login page")),
      body: Column(
        children: [
          CustomText(text: "Selamat datang di aplikasi $statusLogin"),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(hint: "input username", textEditingController: txtUsername)
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(hint: "Input Password", textEditingController: txtPassword)
          ),
            CustomButton(
              text: "Login",
              onPressed: (){
                setState(() {
                  String username = txtUsername.text;
                  String password = txtPassword.text;
                  if(username == "admin" && password == "admin"){
                    statusLogin = "berhasil";
                  }else{
                    statusLogin = "failed";
                  }
                });
            }
            ),
      ],
    )
      ,);
  }
}

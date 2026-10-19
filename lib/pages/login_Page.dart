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
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text("Login Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Selamat Datang!",
              fontSize: 26,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              color: Colors.blueAccent.shade700,
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: "Input Username",
                      controller: txtUsername,
                      isDigitsOnly: false,
                      prefixIcon: Icons.person,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      hintText: "Input Password",
                      controller: txtPassword,
                      isDigitsOnly: false,
                      prefixIcon: Icons.lock,
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      child: CustomButton(
                        text: "Login",
                        onPressed: () {
                          setState(() {
                            String username = txtUsername.text.trim();
                            String password = txtPassword.text.trim();
                            if (username == "admin" && password == "admin") {
                              statusLogin = "berhasil";
                            } else {
                              statusLogin = "failed";
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
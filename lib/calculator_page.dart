import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testflutter/components/custom_button.dart';
import 'package:testflutter/components/custom_text.dart';
import 'package:testflutter/components/custom_textField.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
   TextEditingController num1 = TextEditingController();
   TextEditingController num2 = TextEditingController();
  String _hasil = "0";
  void _hitung(String operasi) {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;
    double total = 0;
    if (operasi == "+") total = a + b;
    if (operasi == "-") total = a - b;
    if (operasi == "*") total = a * b;
    if (operasi == "/") {
      if (a == 0 || b == 0) {
        setState(() {
          _hasil = "tidak boleh ada angka 0";
        });
        return;
      }
      total = a / b;
    }
    setState(() {
      _hasil = total.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyCalculator")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
                hint: "Angka Pertama",
                textEditingController: num1,
                digitonly : true,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              hint: "Angka Pertama",
              textEditingController: num2,
              digitonly : true,
            ),
          ),
          Container(
            child:Row(
              children: [
                CustomButton(text: "+", onPressed: (){_hitung("+");}),
                CustomButton(text: "-", onPressed: (){_hitung("-");}),
                CustomButton(text: "x", onPressed: (){_hitung("*");}),
                CustomButton(text: "/", onPressed: (){_hitung("/");}),
              ]),
          ),
          CustomText(text: "Hasil : $_hasil")
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final bool digitonly;
  const CustomTextfield({
    super.key,
    required this.hint,
    required this.textEditingController,
    this.digitonly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: digitonly ? TextInputType.number : TextInputType.text,
      inputFormatters: digitonly
        ? [FilteringTextInputFormatter.digitsOnly]
        : null,
      decoration: InputDecoration(hint: Text(hint), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

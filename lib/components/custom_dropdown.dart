import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String value;
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value.isEmpty ? null : value,
      hint: Text(hintText),
      items: items.map((String item) {
        return DropdownMenuItem<String>(value: item, child: Text(item));
      }).toList(),
      onChanged: onChanged,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }
}

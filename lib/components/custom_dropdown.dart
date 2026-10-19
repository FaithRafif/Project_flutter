import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? selectedValue;
  final List<String> listItems;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.selectedValue,
    required this.listItems,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: DropdownButton<String>(
        value: selectedValue,
        hint: const Text("Pilih salah satu"),
        items: listItems.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
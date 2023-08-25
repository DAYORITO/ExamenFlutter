import 'package:flutter/material.dart';

class InputPersonal extends StatelessWidget {
  final String? labelText;
  final String? hintText;

  const InputPersonal({
    super.key,
    required this.value1controller,
    this.labelText,
    this.hintText,
  });

  final TextEditingController value1controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: value1controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 255, 232, 232),
        border: const OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}
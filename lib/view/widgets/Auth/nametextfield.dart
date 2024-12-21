import 'package:flutter/material.dart';

class Nametextfield extends StatelessWidget {
  final String hint;
  final TextEditingController textcontroller;
  final bool passwordVisible = false;
  final String? Function(String?)? valid;
  final String label;

  const Nametextfield({
    super.key,
    required this.hint,
    required this.textcontroller,
    required this.valid,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      controller: textcontroller,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(label),
        suffixIcon: Icon(Icons.person_2_outlined),
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 12, color: Color.fromARGB(255, 182, 182, 180)),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      ),
    );
  }
}

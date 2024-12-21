import 'package:flutter/material.dart';

class Usertextfield extends StatelessWidget {
  final String hint;
  final TextEditingController textcontroller;
  final String labeltext;
  final String? Function(String?)? valid;

  const Usertextfield({
    super.key,
    required this.hint,
    required this.textcontroller,
    required this.labeltext,
    required this.valid,
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
        suffixIcon: Icon(Icons.person_2_outlined),
        label: Text(labeltext),
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 12, color: Color.fromARGB(255, 182, 182, 180)),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Numbertextfield extends StatelessWidget {
  final String hint;
  final TextEditingController textcontroller;
  final String? Function(String?)? valid;

  const Numbertextfield({
    super.key,
    required this.hint,
    required this.textcontroller,
    required this.valid,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      keyboardType: TextInputType.number,
      controller: textcontroller,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text("22".tr),
        suffixIcon: Icon(
          Icons.phone,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 12, color: Color.fromARGB(255, 182, 182, 180)),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      ),
    );
  }
}

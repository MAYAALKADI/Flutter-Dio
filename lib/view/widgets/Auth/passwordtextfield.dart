import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Passwordtextfield extends StatelessWidget {
  final String hint;
  final TextEditingController textcontroller;
  final bool? obsecuretext;
  final String? Function(String?)? valid;
  final void Function()? onTap;
  final IconData? icondata;
  const Passwordtextfield({
    super.key,
    required this.hint,
    required this.textcontroller,
    required this.valid,
    this.onTap,
    this.obsecuretext,
    required this.icondata,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      obscureText: obsecuretext == null || obsecuretext == false ? false : true,
      controller: textcontroller,
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text("23".tr),
        hintText: hint,
        suffixIcon: InkWell(
          child: Icon(icondata),
          onTap: onTap,
        ),
        hintStyle: const TextStyle(
            fontSize: 12, color: Color.fromARGB(255, 182, 182, 180)),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      ),
    );
  }
}

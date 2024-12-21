import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: const Color.fromRGBO(244, 179, 21, 1),
      textColor: Colors.white,
      onPressed: onPressed,
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      )),
    );
  }
}

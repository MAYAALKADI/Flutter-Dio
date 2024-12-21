import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bodyauthcustom extends StatelessWidget {
  final String bodytext;

  const Bodyauthcustom({super.key, required this.bodytext});

  @override
  Widget build(BuildContext context) {
    return Text(
      bodytext.tr,
      textAlign: TextAlign.center,
      style:
          TextStyle(color: const Color.fromRGBO(244, 179, 21, 1), fontSize: 18),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Inkwellcustom extends StatelessWidget {
  final void Function()? onTap;
  final String bodytext;
  final String mainword;

  const Inkwellcustom(
      {super.key, this.onTap, required this.bodytext, required this.mainword});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: bodytext),
          TextSpan(
              text: mainword,
              style: TextStyle(
                  color: const Color.fromRGBO(244, 179, 21, 1),
                  fontWeight: FontWeight.bold))
        ])),
      ),
    );
  }
}

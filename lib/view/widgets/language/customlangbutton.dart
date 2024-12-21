import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';


class Customlangbutton extends StatelessWidget {
  final String btntext;
  final void Function()? onpressed;

  const Customlangbutton({super.key, required this.btntext, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: APPColor.orange,
        textColor: Colors.white,
        onPressed: onpressed,
        child: Text(
          btntext,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

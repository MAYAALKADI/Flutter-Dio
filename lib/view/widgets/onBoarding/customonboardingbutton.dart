import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboardingcontroller.dart';
import '../../../core/constant/color.dart';


class Customonboardingbutton extends GetView<OnboardingcontrollerImp> {
  const   Customonboardingbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 120, vertical: 5),
        textColor: Colors.white,
        color: APPColor.orange,
        onPressed: () {
          controller.next();
        },
        child: Text(
          "2".tr,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

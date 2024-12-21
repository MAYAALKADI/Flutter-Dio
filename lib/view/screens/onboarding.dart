import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/onboardingcontroller.dart';
import '../widgets/onBoarding/customonboardingbutton.dart';
import '../widgets/onBoarding/customonboardingdots.dart';
import '../widgets/onBoarding/customonboardingslider.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingcontrollerImp());
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(children: [
              Expanded(flex: 3, child: Customonboardingslider()),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(child: Customonboardingdots()),
                      Expanded(
                        child: Container(
                          height: 30,
                        ),
                      ),
                      Expanded(child: const Customonboardingbutton())
                    ],
                  ))
            ]),
          )),
    );
  }
}

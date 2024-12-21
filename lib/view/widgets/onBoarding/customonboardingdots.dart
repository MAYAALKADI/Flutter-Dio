import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboardingcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';


class Customonboardingdots extends StatelessWidget {
  const Customonboardingdots({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingcontrollerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardlist.length,
                    (index) => AnimatedContainer(
                          width:
                              controller.currentOnBoardPage == index ? 20 : 5,
                          height: 5,
                          margin: EdgeInsets.only(right: 5),
                          duration: Duration(
                            milliseconds: 900,
                          ),
                          decoration: BoxDecoration(
                              color: APPColor.orange,
                              borderRadius: BorderRadius.circular(10)),
                        )),
              ],
            ));
  }
}

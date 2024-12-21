import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboardingcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';


class Customonboardingslider extends GetView<OnboardingcontrollerImp> {
  const Customonboardingslider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (v) {
          controller.onchangepage(v);
        },
        itemCount: onboardlist.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Container(
                height: 80,
              ),
              Text(
                onboardlist[i].title!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: APPColor.black),
              ),
              Container(
                height: 30,
              ),
              Image.asset(
                onboardlist[i].image!,
                width: 220,
                height: 250,
                fit: BoxFit.fill,
              ),
              Container(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onboardlist[i].body!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: APPColor.grey, fontSize: 16, height: 1.8),
                  )),
            ],
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';
import '../core/services/services.dart';
import '../data/datasource/static/static.dart';


abstract class Onboardingcontroller extends GetxController {
  next();
  onchangepage(int index);
}

class OnboardingcontrollerImp extends Onboardingcontroller {
  int currentOnBoardPage = 0;

  late PageController pagecontroller;

 // MyServices myServices = Get.find();

  @override
  next() {
    currentOnBoardPage++;

    if (currentOnBoardPage > onboardlist.length - 1) {
      //myServices.sharedpref.setString("onboarding", "1");
      Get.offAllNamed(AppRoutes.login);
    } else {
      pagecontroller.animateToPage(currentOnBoardPage,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onchangepage(int index) {
    currentOnBoardPage = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}

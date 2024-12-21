import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  checkphone();
  goToverfiycode();
}

class ForgetpasswordcontrollerImp extends Forgetpasswordcontroller {
  late TextEditingController phonenumbercontroller;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  checkphone() {}

  @override
  goToverfiycode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offAllNamed(AppRoutes.verfiycode);
    } else {}
  }

  @override
  void onInit() {
    phonenumbercontroller = TextEditingController();

    super.onInit();
  }
}

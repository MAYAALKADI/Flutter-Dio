import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';


abstract class Resetpasswordcontroller extends GetxController {
  resetpassword();
  goTosuccessresetpassword();
}

class ResetpasswordcontrollerImp extends Resetpasswordcontroller {
  late TextEditingController passwordcontroller;
  late TextEditingController confirmpasswordcontroller;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  resetpassword() {}

  bool isshowpassword = true;

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goTosuccessresetpassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offAllNamed(AppRoutes.successresetpassword);
    } else {}
  }

  @override
  void onInit() {
    passwordcontroller = TextEditingController();
    confirmpasswordcontroller = TextEditingController();
    super.onInit();
  }
}

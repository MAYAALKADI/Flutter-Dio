import 'package:get/get.dart';

import '../../core/constant/routes.dart';


abstract class Verifycodecontroller extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifycodecontrollerImp extends Verifycodecontroller {
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offAllNamed(AppRoutes.resetpassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}

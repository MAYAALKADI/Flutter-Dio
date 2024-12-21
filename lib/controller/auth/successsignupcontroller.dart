import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class Successsignupcontroller extends GetxController {
  gotologinpage();
}

class SuccesssignupcontrollerImp extends Successsignupcontroller {
  @override
  gotologinpage() {
    Get.offAllNamed(AppRoutes.login);
  }
}

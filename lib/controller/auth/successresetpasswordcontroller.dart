import 'package:get/get.dart';

import '../../core/constant/routes.dart';


abstract class Successresetpasswordcontroller extends GetxController {
  gotologinpage();
}

class SuccessresetpasswordcontrollerImp extends Successresetpasswordcontroller {
  @override
  gotologinpage() {
    Get.offAllNamed(AppRoutes.login);
  }
}

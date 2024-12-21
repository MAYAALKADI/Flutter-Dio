 import 'package:get/get.dart';

import '../core/class/Moujaas.dart';

class Initialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Moujaas());
  }
}

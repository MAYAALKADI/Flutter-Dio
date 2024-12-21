import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "49".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "50".tr;
    }
  }

  if (val.isEmpty) {
    return "51".tr;
  }

  if (val.length > max) {
    return "53".tr;
  }
}

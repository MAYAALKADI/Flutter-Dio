// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:tadreep/core/class/requeststatus.dart';
// import 'package:tadreep/core/constant/routes.dart';
// import 'package:tadreep/core/functions/handlingApi.dart';
// import 'package:tadreep/data/datasource/remote/auth/verifysignupdata.dart';

// abstract class Verifysignupcodecontroller extends GetxController {
//   checkCode();
//   goTosuccessSignup(String verificationCode);
// }

// class VerifysignupcodecontrollerImp extends Verifysignupcodecontroller {
//   VerifysignupData verifysignupData = VerifysignupData(Get.find());
//   String? phoneUser;

//   Requeststatus? requeststatus;
//   @override
//   checkCode() {}

//   @override
//   goTosuccessSignup(String verificationCode) async {
//     requeststatus = Requeststatus.loading;
//     update();
//     var response =
//         await verifysignupData.postdata(phoneUser!, verificationCode);
//     print("controller=====================$response");
//     requeststatus = handlingApi(response);

//     if (Requeststatus.success == requeststatus) {
//       if (response['status'] == true) {
//         Get.offAllNamed(AppRoutes.successsignup);
//       }
//     } else {
//       Get.defaultDialog(
//         title: "Warning",
//         middleText: "verify code not correct",
//       );
//       requeststatus = Requeststatus.failure;
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     phoneUser = Get.arguments['phoneUser'];
//     super.onInit();
//   }
// }

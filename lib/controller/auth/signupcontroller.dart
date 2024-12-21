import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../core/class/requeststatus.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingApi.dart';
import '../../data/datasource/remote/auth/signupdata.dart';




abstract class Signupcontroller extends GetxController {
  signUp();
  goToLogin();
}

class SignupcontrollerImp extends Signupcontroller {
  late TextEditingController numbercontroller;
  late TextEditingController passwordcontroller;
  late TextEditingController password_confirmationcontroller;

  late TextEditingController firstnamecontroller;
  late TextEditingController lastnamecontroller;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // final Apiconsumer api;

  Requeststatus? requeststatus;
  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      requeststatus = Requeststatus.loading;
      update();
      var response = await signupData.postdata(
          firstnamecontroller.text,
          lastnamecontroller.text,
          passwordcontroller.text,
          password_confirmationcontroller.text,
          numbercontroller.text);
      print("controller=====================$response");
      requeststatus = handlingApi(response);

      if (Requeststatus.success == requeststatus) {
        if (response['status'] == true) {
          Get.offAllNamed(AppRoutes.login);
        }
      } else {
        Get.defaultDialog(
          title: "Warning",
          middleText: "phone Number is already used",
        );
        requeststatus = Requeststatus.failure;
      }
      update();
    }
  }
  // signUp() async {
  //   var formdata = formstate.currentState;
  //   if (formdata!.validate()) {
  //     {}

  //     Get.offNamed(AppRoutes.verifysignupcode);
  //   }
  // }

  bool isshowpassword = true;

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    numbercontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    firstnamecontroller = TextEditingController();
    lastnamecontroller = TextEditingController();
    password_confirmationcontroller = TextEditingController();
    super.onInit();
  }
}

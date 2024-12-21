import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:untitled17/helper_with_dio/cash_helper.dart';
import 'package:untitled17/helper_with_dio/dio_helper.dart';
import 'package:untitled17/model_api/log_user.dart';

import '../../core/class/requeststatus.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingApi.dart';
import '../../data/datasource/remote/auth/logindata.dart';


abstract class Logincontroller extends GetxController {
  login();
  goToSignUp();
  goToForgetpassword();
  goToHome();

}

class LogincontrollerImp extends Logincontroller {
  late TextEditingController numbercontroller;
  late TextEditingController passwordcontroller;

  Requeststatus? requeststatus;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  Logindata logindata = Logindata(Get.find());

  List data = [];
  LoginUser? loginUser;
  LoginUserField? loginUserField;
  bool load=false;
  String errors="";


  void myLogin({
    required context,
    required String phone,
    required String password,
  }) {
   Map data={"phone":phone,"password":password} ;
   load=true;
   update();
    print("register");
    DioHelper.myPost(
      endPont: "login",
      myData: data
    ).then((value) {
      if (value.statusCode == 422) {
         loginUserField=LoginUserField.formJson(value.data);
         load=false;
         update();

      }

      if (value.statusCode == 401) {
        errors="The phone number or password is incorrect";
        load=false;
        update();

      }
      if (value.statusCode == 200) {
         loginUser = LoginUser.formJson(value.data);

        CashHelper.putUser(userToken: "");
        CashHelper.putUser(userToken: loginUser!.token);
        CashHelper.putUserPassword(password: password);
         goToHome();
         load=false;
         update();


      }

      ///
    }).catchError((error) {
      print('register error: ${error.toString()}');
    });
  }













  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      requeststatus = Requeststatus.loading;
      update();
      var response = await logindata.postdata(
          passwordcontroller.text, numbercontroller.text);
      print("controller=====================$response");
      requeststatus = handlingApi(response);

      if (Requeststatus.success == requeststatus) {
        if (response['status'] == true) {
          Get.offAllNamed(AppRoutes.homes);
        }
      } else {
        Get.defaultDialog(
          title: "Warning",
          middleText: "phone Number or password not correct",
        );
        requeststatus = Requeststatus.failure;
      }
      update();
    }
  }



  bool isshowpassword = true;

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToForgetpassword() {
    Get.toNamed(AppRoutes.forgetpassword);
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  void onInit() {
    numbercontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  goToHome() {
    Get.offNamed(AppRoutes.homes);
  }
}

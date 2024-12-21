import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/auth/logincontroller.dart';
import '../../../core/class/requeststatus.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/exitalert.dart';
import '../../../core/functions/validator.dart';
import '../../widgets/Auth/bodyauthcustom.dart';
import '../../widgets/Auth/inkwellcustom.dart';
import '../../widgets/Auth/logocustom.dart';
import '../../widgets/Auth/materialbutton.dart';
import '../../widgets/Auth/numbertextfield.dart';
import '../../widgets/Auth/passwordtextfield.dart';
import '../../widgets/Auth/titlecustom.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LogincontrollerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("13".tr,
              style: TextStyle(color: APPColor.grey, fontSize: 26)),
        ),
        // ignore: deprecated_member_use
        body: GetBuilder<LogincontrollerImp>(
            builder: (logincontroller) => logincontroller.requeststatus ==
                    Requeststatus.loading
                ? const Center(
                    child: Text("loading..."),
                  )
                : WillPopScope(
                    onWillPop: alertExitApp,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: logincontroller.formstate,
                        child: ListView(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [



                                  Container(
                                    height: 20,
                                  ),
                                  Logocustom(),
                                  Container(
                                    height: 20,
                                  ),
                                  Titlecustom(title: "11".tr),
                                  Container(
                                    height: 20,
                                  ),
                                  Bodyauthcustom(bodytext: "12".tr),
                                  Container(
                                    height: 20,
                                  ),
                                  Text(
                                    "14".tr,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                  ),
                                  Numbertextfield(
                                    valid: (val) {
                                      return validInput(val!, 10, 10, "phone");
                                    },
                                    hint: '15'.tr,
                                    textcontroller:
                                        logincontroller.numbercontroller,
                                  ),
                                  Container(
                                    height: 20,
                                  ),
                                  Text(
                                    "16".tr,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                  ),
                                  GetBuilder<LogincontrollerImp>(
                                    builder: (control) => Passwordtextfield(
                                      obsecuretext: control.isshowpassword,
                                      onTap: () {
                                        control.showpassword();
                                      },
                                      valid: (val) {
                                        return validInput(
                                            val!, 5, 30, "password");
                                      },
                                      hint: '17'.tr,
                                      textcontroller:
                                          control.passwordcontroller,
                                      icondata: control.isshowpassword == false
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: InkWell(
                                      child: Text(
                                        "18".tr,
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 16,
                                        ),
                                      ),
                                      onTap: () {
                                        logincontroller.goToForgetpassword();
                                      },
                                    ),
                                  ),
                                ]),

                            logincontroller.load==false?
                            CustomButton(
                              text: "19".tr,
                              onPressed: () async {
                                logincontroller.myLogin(context: context, phone:logincontroller.numbercontroller.text , password: logincontroller.passwordcontroller.text);
                              },
                            ):SizedBox(),
                            Container(
                              height: 20,
                            ),
                            Inkwellcustom(
                              bodytext: "20".tr,
                              mainword: '21'.tr,
                              onTap: () {
                                logincontroller.goToSignUp();
                              },
                            )
                          ],
                        ),
                      ),
                    ))));
  }
}

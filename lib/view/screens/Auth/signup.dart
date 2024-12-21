import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signupcontroller.dart';
import '../../../core/class/requeststatus.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/exitalert.dart';
import '../../../core/functions/validator.dart';
import '../../widgets/Auth/bodyauthcustom.dart';
import '../../widgets/Auth/inkwellcustom.dart';
import '../../widgets/Auth/materialbutton.dart';
import '../../widgets/Auth/nametextfield.dart';
import '../../widgets/Auth/numbertextfield.dart';
import '../../widgets/Auth/passwordtextfield.dart';
import '../../widgets/Auth/profilepicture/profileimage.dart';
import '../../widgets/Auth/titlecustom.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignupcontrollerImp()); // Lazy loading the SignupController
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "37".tr,
          style: TextStyle(color: APPColor.grey, fontSize: 26),
        ),
      ),
      body: GetBuilder<SignupcontrollerImp>(
        builder: (signupcontroller) => signupcontroller.requeststatus == Requeststatus.loading
            ? Center(child: Text("loading...")) // Display loading text during API calls
            : WillPopScope(
          onWillPop: alertExitApp, // Handle back navigation
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Form(
              key: signupcontroller.formstate,
              child: ListView(
                children: [
                  // Profile Image Section


                  SizedBox(height: 20), // Spacing

                  // Title Section
                  Titlecustom(title: "38".tr),

                  SizedBox(height: 20), // Spacing

                  // Body Text Section
                  Bodyauthcustom(bodytext: "39".tr),

                  SizedBox(height: 20), // Spacing
                 // ProfileImage(),
                  // First Name Field
                  Text(
                    "40".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Nametextfield(
                    valid: (val) {
                      return validInput(val!, 4, 100, "username");
                    },
                    hint: '42'.tr,
                    textcontroller: signupcontroller.firstnamecontroller,
                    label: '43'.tr,
                  ),

                  SizedBox(height: 20), // Spacing

                  // Last Name Field
                  Text(
                    "41".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Nametextfield(
                    valid: (val) {
                      return validInput(val!, 4, 100, "username");
                    },
                    hint: '44'.tr,
                    textcontroller: signupcontroller.lastnamecontroller,
                    label: '',
                  ),

                  SizedBox(height: 20), // Spacing

                  // Phone Number Field
                  Text(
                    "14".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Numbertextfield(
                    valid: (val) {
                      return validInput(val!, 10, 10, "phone");
                    },
                    hint: '15'.tr,
                    textcontroller: signupcontroller.numbercontroller,
                  ),

                  SizedBox(height: 20), // Spacing

                  // Password Field
                  Text(
                    "16".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  GetBuilder<SignupcontrollerImp>(
                    builder: (control) => Passwordtextfield(
                      obsecuretext: control.isshowpassword,
                      onTap: () {
                        control.showpassword();
                      },
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      hint: '17'.tr,
                      textcontroller: control.passwordcontroller,
                      icondata: control.isshowpassword == false
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),

                  SizedBox(height: 20), // Spacing

                  // Confirm Password Field
                  Text(
                    "54".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  GetBuilder<SignupcontrollerImp>(
                    builder: (control) => Passwordtextfield(
                      obsecuretext: control.isshowpassword,
                      onTap: () {
                        control.showpassword();
                      },
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      hint: '54'.tr,
                      textcontroller: control.password_confirmationcontroller,
                      icondata: control.isshowpassword == false
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),

                  SizedBox(height: 20), // Spacing

                  // Sign Up Button
                  CustomButton(
                    text: "46".tr,
                    onPressed: () async {
                      signupcontroller.signUp();
                    },
                  ),

                  SizedBox(height: 20), // Spacing

                  // Login Link
                  Inkwellcustom(
                    bodytext: "47".tr,
                    mainword: '48'.tr,
                    onTap: () {
                      signupcontroller.goToLogin();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpasswordcontroller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/validator.dart';
import '../../../widgets/Auth/bodyauthcustom.dart';
import '../../../widgets/Auth/materialbutton.dart';
import '../../../widgets/Auth/passwordtextfield.dart';
import '../../../widgets/Auth/titlecustom.dart';


class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  @override
  Widget build(BuildContext context) {
    ResetpasswordcontrollerImp Resetpasswordcontroller =
        Get.put(ResetpasswordcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title:
            Text("31".tr, style: TextStyle(color: APPColor.grey, fontSize: 26)),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Form(
          key: Resetpasswordcontroller.formstate,
          child: ListView(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  height: 20,
                ),
                Titlecustom(title: "32".tr),
                Container(
                  height: 20,
                ),
                Bodyauthcustom(bodytext: "33".tr),
                Container(
                  height: 20,
                ),
                Text(
                  "34".tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                ),
                GetBuilder<ResetpasswordcontrollerImp>(
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
                Container(
                  height: 20,
                ),
                Text(
                  "35".tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                ),
                GetBuilder<ResetpasswordcontrollerImp>(
                  builder: (controll) => Passwordtextfield(
                    obsecuretext: controll.isshowpassword,
                    onTap: () {
                      controll.showpassword();
                    },
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    hint: '35'.tr,
                    textcontroller: controll.confirmpasswordcontroller,
                    icondata: controll.isshowpassword == false
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
                Container(
                  height: 20,
                ),
              ]),
              CustomButton(
                text: "36".tr,
                onPressed: () async {
                  Resetpasswordcontroller.goTosuccessresetpassword();
                },
              ),
              Container(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

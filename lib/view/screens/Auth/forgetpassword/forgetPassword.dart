import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgetpasswordcontroller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/validator.dart';
import '../../../widgets/Auth/bodyauthcustom.dart';
import '../../../widgets/Auth/materialbutton.dart';
import '../../../widgets/Auth/numbertextfield.dart';
import '../../../widgets/Auth/titlecustom.dart';


class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    ForgetpasswordcontrollerImp Forgetpasswordcontroller =
        Get.put(ForgetpasswordcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title:
            Text("24".tr, style: TextStyle(color: APPColor.grey, fontSize: 26)),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Form(
          key: Forgetpasswordcontroller.formstate,
          child: ListView(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  height: 20,
                ),
                Titlecustom(title: "25".tr),
                Container(
                  height: 20,
                ),
                const Bodyauthcustom(bodytext: "26"),
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
                  hint: "15".tr,
                  textcontroller:
                      Forgetpasswordcontroller.phonenumbercontroller,
                  valid: (val) {
                    return validInput(val!, 10, 10, "phone");
                  },
                ),
                Container(
                  height: 20,
                )
              ]),
              CustomButton(
                text: "27".tr,
                onPressed: () {
                  Forgetpasswordcontroller.goToverfiycode();
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

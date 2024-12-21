import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/verifycodecontroller.dart';
import '../../../../core/constant/color.dart';
import '../../../widgets/Auth/bodyauthcustom.dart';
import '../../../widgets/Auth/titlecustom.dart';



class Verifycode extends StatefulWidget {
  const Verifycode({super.key});

  @override
  State<Verifycode> createState() => _VerifycodeState();
}

class _VerifycodeState extends State<Verifycode> {
  @override
  Widget build(BuildContext context) {
    VerifycodecontrollerImp Verifycodecontroller =
        Get.put(VerifycodecontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title:
            Text("28".tr, style: TextStyle(color: APPColor.grey, fontSize: 26)),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 20,
              ),
              Titlecustom(title: "29".tr),
              Container(
                height: 20,
              ),
              Bodyauthcustom(bodytext: "30".tr),
              Container(
                height: 20,
              ),
              Text(
                "14".tr,
                style:const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 20,
              ),
              OtpTextField(
                fieldWidth: 50,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: APPColor.orange,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  Verifycodecontroller.goToResetPassword();
                }, // end onSubmit
              ),
              Container(
                height: 20,
              )
            ]),
            Container(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

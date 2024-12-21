// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:tadreep/controller/auth/forgetpasswordcontroller.dart';
// import 'package:tadreep/controller/auth/signupcontroller.dart';
// import 'package:tadreep/controller/auth/verifycodecontroller.dart';
// import 'package:tadreep/controller/auth/verifysignupcodecontroller.dart';
// import 'package:tadreep/core/class/requeststatus.dart';
// import 'package:tadreep/core/constant/color.dart';
// import 'package:tadreep/core/constant/routes.dart';
// import 'package:tadreep/view/widgets/Auth/bodyauthcustom.dart';
// import 'package:tadreep/view/widgets/Auth/inkwellcustom.dart';
// import 'package:tadreep/view/widgets/Auth/logocustom.dart';
// import 'package:tadreep/view/widgets/Auth/materialbutton.dart';
// import 'package:tadreep/view/widgets/Auth/numbertextfield.dart';
// import 'package:tadreep/view/widgets/Auth/passwordtextfield.dart';
// import 'package:tadreep/view/widgets/Auth/titlecustom.dart';
// import 'package:tadreep/view/widgets/Auth/usertextfield.dart';

// class Verifysignupcode extends StatefulWidget {
//   const Verifysignupcode({super.key});

//   @override
//   State<Verifysignupcode> createState() => _VerifysignupcodeState();
// }

// class _VerifysignupcodeState extends State<Verifysignupcode> {
//   @override
//   Widget build(BuildContext context) {
//     Get.put(VerifysignupcodecontrollerImp());
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           title: Text("Verify Code",
//               style: TextStyle(color: APPColor.grey, fontSize: 26)),
//         ),
//         body: GetBuilder<VerifysignupcodecontrollerImp>(
//           builder: (Verifysignupcodecontroller) =>
//               Verifysignupcodecontroller.requeststatus == Requeststatus.loading
//                   ? Center(
//                       child: Text("loading..."),
//                     )
//                   : Container(
//                       color: Colors.white,
//                       padding: EdgeInsets.all(20),
//                       child: ListView(
//                         children: [
//                           Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   height: 20,
//                                 ),
//                                 Titlecustom(title: "Check PhoneNumber"),
//                                 Container(
//                                   height: 20,
//                                 ),
//                                 Bodyauthcustom(
//                                     bodytext:
//                                         "Please Enter The Digit Code Sent To Your Number"),
//                                 Container(
//                                   height: 20,
//                                 ),
//                                 Text(
//                                   "PhoneNumber",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Container(
//                                   height: 20,
//                                 ),
//                                 OtpTextField(
//                                   fieldWidth: 50,
//                                   borderRadius: BorderRadius.circular(20),
//                                   numberOfFields: 5,
//                                   borderColor: APPColor.orange,
//                                   //set to true to show as box or false to show as dash
//                                   showFieldAsBox: true,
//                                   //runs when a code is typed in
//                                   onCodeChanged: (String code) {
//                                     //handle validation or checks here
//                                   },
//                                   //runs when every textfield is filled
//                                   onSubmit: (String verificationCode) {
//                                     Verifysignupcodecontroller
//                                         .goTosuccessSignup(verificationCode);
//                                   }, // end onSubmit
//                                 ),
//                                 Container(
//                                   height: 20,
//                                 )
//                               ]),
//                           Container(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//         ));
//   }
// }

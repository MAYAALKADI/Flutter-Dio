// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
//
// import '../constant/routes.dart';
// import '../services/services.dart';
//
//
// class Mymiddleware extends GetMiddleware {
//   int? get Priority => 1;
//
//   MyServices myServices = Get.find();
//
//   @override
//   // ignore: body_might_complete_normally_nullable
//   RouteSettings? redirect(String? route) {
//     if (myServices.sharedpref.getString("onboarding") == "1") {
//       return const RouteSettings(name: AppRoutes.login);
//     }
//   }
// }

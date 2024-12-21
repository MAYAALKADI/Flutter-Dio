import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled17/view/homes.dart';
import 'package:untitled17/view/screens/Auth/forgetpassword/forgetPassword.dart';
import 'package:untitled17/view/screens/Auth/forgetpassword/resetpassword.dart';
import 'package:untitled17/view/screens/Auth/forgetpassword/successresetpassword.dart';
import 'package:untitled17/view/screens/Auth/forgetpassword/verifycode.dart';
import 'package:untitled17/view/screens/Auth/login.dart';
import 'package:untitled17/view/screens/Auth/signup.dart';
import 'package:untitled17/view/screens/Auth/successsignup.dart';
import 'package:untitled17/view/screens/language.dart';
import 'package:untitled17/view/screens/onboarding.dart';
import 'core/constant/routes.dart';


List<GetPage<dynamic>>? routes = [
/////////////startpage/////////

  // GetPage(
  //   // name: "/",
  //   // page: () => const Language(),
  // ),

  // middlewares: [
  //   Mymiddleware(),
  // ]

  GetPage(
    name: "/",
    page: () => const Language(),
  ),

///////////onboarding//////////////
  GetPage(name: AppRoutes.onboarding, page: () => const Onboarding()),

  ///////////auth/////////////////////
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetpassword, page: () => const Forgetpassword()),
  GetPage(name: AppRoutes.verfiycode, page: () => const Verifycode()),
  GetPage(name: AppRoutes.resetpassword, page: () => const Resetpassword()),
  GetPage(
      name: AppRoutes.successresetpassword,
      page: () => const Successresetpassword()),
  GetPage(name: AppRoutes.successsignup, page: () => const Successsignup()),
  GetPage(name: AppRoutes.homes, page: () => Homes()),

  // GetPage(
  //     name: AppRoutes.verifysignupcode, page: () => const Verifysignupcode()),
];


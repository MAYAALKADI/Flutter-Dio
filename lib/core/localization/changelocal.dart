import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/theme.dart';
import '../services/services.dart';


class LOcaleController extends GetxController {
  Locale? initialLang;
  MyServices myServices = Get.find();

  ThemeData apptheme = Englishtheme;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedpref.setString("lang", langCode);
    apptheme = langCode == "ar" ? Arabictheme : Englishtheme;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflang = myServices.sharedpref.getString("lang");

    if (sharedpreflang == "ar") {
      initialLang = const Locale("ar");
      apptheme = Arabictheme;
    } else if (sharedpreflang == "en") {
      initialLang = const Locale("en");
      apptheme = Englishtheme;
    } else {
      initialLang = Locale(Get.deviceLocale!.languageCode);
      apptheme = Englishtheme;
    }
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/localization/changelocal.dart';
import '../widgets/language/customlangbutton.dart';



class Language extends GetView<LOcaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),
            Container(
              height: 20,
            ),
            Customlangbutton(
              btntext: 'Ar',
              onpressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoutes.onboarding);
              },
            ),
            Customlangbutton(
              btntext: 'en',
              onpressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoutes.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}

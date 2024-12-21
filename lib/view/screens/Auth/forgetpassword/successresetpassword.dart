import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/successresetpasswordcontroller.dart';
import '../../../../core/constant/color.dart';
import '../../../widgets/Auth/materialbutton.dart';


class Successresetpassword extends StatelessWidget {
  const Successresetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessresetpasswordcontrollerImp successresetpasswordcontroller =
        Get.put(SuccessresetpasswordcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Success",
            style: TextStyle(color: APPColor.grey, fontSize: 26)),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: APPColor.orange,
              ),
            ),
            Text("kkll", style: Theme.of(context).textTheme.headlineLarge),
            Container(
              height: 30,
            ),
            Text(
              "jjj",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButton(
                text: "Go to Login",
                onPressed: () async {
                  successresetpasswordcontroller.gotologinpage();
                },
              ),
            ),
            Container(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

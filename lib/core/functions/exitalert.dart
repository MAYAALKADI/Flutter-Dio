import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Alert!",
      middleText: "Are you Sure To Exit?",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("confirm")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("cancel")),
      ]);
  return Future.value(true);
}

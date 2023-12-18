import 'dart:io';

import 'package:ecomerce_app/core/contest/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/widget/gineralputton/customgineralputton.dart';

Future<bool> alertpop() {
  Get.defaultDialog(
      title: "hi",
      middleText: "46".tr,
      middleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      textConfirm: "confirm",
      textCancel: "cancel",
      confirmTextColor: Colors.black,
      cancelTextColor: Colors.black,
      buttonColor: colorapp.buttoncolor,
      onConfirm: () {
        print("confirm");
        exit(1);
      },
      onCancel: () {
        Get.back();
        print("cancel");
      });
  return Future.value(true);
}

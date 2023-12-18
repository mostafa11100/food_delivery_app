import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/contest/approuts.dart';

abstract class reserpasword extends GetxController {
  gotosuccesreset();
  checkresetpasword();
}

class resetpaswordcontroler extends reserpasword {
  GlobalKey<FormState>? key2 = GlobalKey();
  TextEditingController? pasword;
  TextEditingController? resetpasword;

  @override
  gotosuccesreset() {
    if (key2!.currentState!.validate()) {
      Get.offAllNamed(approuts.successreset);
    } else
      print("nooooooo");
  }

  @override
  void onInit() {
    pasword = TextEditingController();
    resetpasword = TextEditingController();
    super.onInit();
  }

  @override
  checkresetpasword() {}
}

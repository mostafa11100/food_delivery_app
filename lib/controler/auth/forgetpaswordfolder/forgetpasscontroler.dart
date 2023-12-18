import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class forgetcontroler extends GetxController {
  gotoverifycode();
  checkcode();
}

class forgetpasscontroler extends forgetcontroler {
  TextEditingController? email;
  @override
  gotoverifycode() {
    Get.offAllNamed('/verifycode');
  }

  @override
  checkcode() {}

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
}

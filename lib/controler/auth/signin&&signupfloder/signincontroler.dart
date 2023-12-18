import 'package:ecomerce_app/core/contest/approuts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class signinconrole extends GetxController {
  signin();
  signup();
}

class signcontroler extends signinconrole {
  TextEditingController? email;
  TextEditingController? pasword;
  @override
  signin() {}

  @override
  signup() {
    Get.offAllNamed(approuts.signuprout);
    Get.delete<signcontroler>();
  }

  gotoforgetpaswrd() {
    Get.offAllNamed(approuts.forgetpasword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    pasword = TextEditingController();
    super.onInit();
  }
}

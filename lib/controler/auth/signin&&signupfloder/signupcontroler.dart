import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/contest/approuts.dart';

class signupcontroler extends GetxController {
  GlobalKey<FormState>? key2 = GlobalKey();

  TextEditingController? email;
  TextEditingController? pasword;
  TextEditingController? phone;
  TextEditingController? username;
  void signup() {}
  void gtotosgnin() {
    Get.offAllNamed('/login');
  }

  void gototcheckeail() {
    if (key2!.currentState!.validate()) {
      Get.offAllNamed(approuts.verifycodeemail);
      Get.delete<signupcontroler>();
    } else
      print("nooooooo");
  }

  @override
  void onInit() {
    email = TextEditingController();
    pasword = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }
}

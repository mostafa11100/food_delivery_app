import 'package:ecomerce_app/core/contest/approuts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class veryficodeemailcontrol extends GetxController {
  gotosuccesfullemail();
  checkemail();
}

class veryficodeemailcontrolapp extends veryficodeemailcontrol {
  @override
  gotosuccesfullemail() {
    Get.offAllNamed(approuts.successemail);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  checkemail() {
    // TODO: implement checkemail
    throw UnimplementedError();
  }
}

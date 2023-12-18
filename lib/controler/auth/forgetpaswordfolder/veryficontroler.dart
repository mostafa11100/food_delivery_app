import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/contest/approuts.dart';

abstract class veryficontroler extends GetxController {
  gotoresetpasword();
  checkemail();
}

class veryfiemailcontroelr extends veryficontroler {
  @override
  gotoresetpasword() {
    Get.offAllNamed(approuts.verifypasword);
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

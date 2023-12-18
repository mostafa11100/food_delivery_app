import 'package:ecomerce_app/core/services/sharedprefrencesservices.dart';
import 'package:ecomerce_app/data/datasource/onpoandingdatasource.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/authfolder/sign&&loginfolder/login.dart';

abstract class contoleronpording extends GetxController {
  void Next();
  void onchanged(int index);
}

class controlonpordingapp extends contoleronpording {
  PageController? control;
  services my = Get.find();
  int currentindex = 0;

  @override
  void Next() {
    if (currentindex < onpoandingdatasource.datasource.length - 1) {
      currentindex++;

      control!.animateToPage(currentindex,
          duration: Duration(milliseconds: 800), curve: Curves.ease);
    } else {
      my.shared!.setString('enter', 'yes');
      Get.offAllNamed('/login');
    }

    update();
  }

  @override
  void onInit() {
    control = PageController();
    print("ocntrol is intialized");
    super.onInit();
  }

  @override
  void onchanged(int index) {
    currentindex = index;
    update();
  }
}

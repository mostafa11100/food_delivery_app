import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/sharedprefrencesservices.dart';
import '../../lcoalization/thems.dart';

class controllang extends GetxController {
  Locale? local;
  ThemeData? them;

  services myservice = Get.find();
  int xx = 0;
  void onchang1(String langcode) {
    them = langcode == 'en' ? themenglish : themearpic;
    Get.changeTheme(them!);
    local = Locale(langcode);
    Get.updateLocale(local!);
    myservice.shared!.setString("lang", langcode);
  }

  void cream() {
    xx++;
  }

  @override
  void onInit() {
    super.onInit();
    String? checkpref = myservice.shared!.getString('lang');
    if (checkpref == 'ar') {
      them = themearpic;
      local = Locale('ar');
    } else if (checkpref == 'en') {
      them = themenglish;
      local = Locale('en');
    } else {
      them = themenglish;
      local = Get.deviceLocale;
    }
  }

  @override
  void onClose() {
    print("coloseeeee");

    // TODO: implement onClose
    super.onClose();
  }
}

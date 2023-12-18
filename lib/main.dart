import 'dart:async';
import 'dart:ffi';
import 'core/contest/approuts.dart';

import 'package:ecomerce_app/view/screen/onpoandringfolder/language.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Binding.dart';
import 'controler/auth/signin&&signupfloder/signincontroler.dart';
import 'controler/auth/signin&&signupfloder/signupcontroler.dart';
import 'core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'core/lcoalization/thems.dart';
import 'core/services/sharedprefrencesservices.dart';
import 'view/screen/onpoandringfolder/onpoarding.dart';

import 'routs.dart';
import 'core/contest/colorapp.dart';

import 'core/lcoalization/languagehandingfloder/onpondringlocalization.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  intialized();
  // WidgetsBinding.instance.addPostFrameCallback((_)  {

  runApp(app());
//}
  // runAppAfterInitialized();
}

void runAppAfterInitialized() {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    runApp(app());
  });
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => signupcontroler(), fenix: true);
    controllang local = Get.put(controllang());
    Get.lazyPut(() => signcontroler(), fenix: true);

//  Get.put(
//       controllang(),permanent: true
//     );
    return GetMaterialApp(
        initialBinding: myBinding(),
        locale: local.local,
        translations: localiztiononpondring(),
        theme: local.them,
        //  routes: routs.routes,

        // home: const languageapp(),
        initialRoute: approuts.languaapp,
        getPages: routs.getPages);
  }
}

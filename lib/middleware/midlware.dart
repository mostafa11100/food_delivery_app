import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../core/contest/approuts.dart';
import '../core/services/sharedprefrencesservices.dart';

class mdlware extends GetMiddleware {
  int? priority = 1;
  services myservice = Get.find();
  RouteSettings? redirect(String? route) {
    if (myservice.shared?.getString('enter') == 'yes')
      return RouteSettings(name: approuts.rout);
    else
      return null;
  }
}

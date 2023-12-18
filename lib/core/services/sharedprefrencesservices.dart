import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class services extends GetxService {
  SharedPreferences? shared;

  @override
  Future<services> onInit() async {
    shared = await SharedPreferences.getInstance();
    super.onInit();
    print("shared  ppppppp");
    return this;
  }
}

void intialized() async {
  await Get.putAsync(() => services().onInit());
}

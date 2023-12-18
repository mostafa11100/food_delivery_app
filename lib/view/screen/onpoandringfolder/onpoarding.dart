import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_string_escapes
import '../../../controler/onpording.dart';
import '../../../data/datasource/onpoandingdatasource.dart';
import '../../../core/contest/colorapp.dart';
import '../../widget/customeelevatedbutton.dart';
import '../../widget/customonponding.dart';
import '../../widget/customunmatedconainer.dart';

class Onpoarding extends StatelessWidget {
  void intialize() {
    controlonpordingapp control = controlonpordingapp();
    Get.put(control);
  }

  @override
  Widget build(BuildContext context) {
    intialize();
    return Scaffold(
      body: Column(
        children: [
          customponding(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                customanimatedcontainer(),
                custombutton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

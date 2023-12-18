import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controler/onpording.dart';
import '../../core/contest/colorapp.dart';
import '../screen/onpoandringfolder/onpoarding.dart';
import 'customonponding.dart';

class custombutton extends GetView<controlonpordingapp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40),
        height: 35,
        width: 180,
        decoration:
            BoxDecoration(borderRadius: BorderRadiusDirectional.circular(7)),
        child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: colorapp.buttoncolor),
            onPressed: () {
              controller.Next();
            },
            child: Text('8'.tr)));
  }
}

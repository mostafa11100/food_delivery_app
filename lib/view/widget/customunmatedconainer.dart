import 'package:ecomerce_app/controler/onpording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/datasource/onpoandingdatasource.dart';
import '../../core/contest/colorapp.dart';
import 'customonponding.dart';

class customanimatedcontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<controlonpordingapp>(builder: ((controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(onpoandingdatasource.datasource.length, (index) {
            return AnimatedContainer(
                margin: EdgeInsets.all(5),
                duration: Duration(milliseconds: 700),
                height: 7,
                width: controller.currentindex == index ? 22 : 7,
                decoration: BoxDecoration(
                    color: colorapp.primarycolor,
                    borderRadius: BorderRadiusDirectional.circular(3)));
          }),
        ],
      );
    }));
  }
}

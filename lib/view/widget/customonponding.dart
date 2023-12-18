import 'package:ecomerce_app/core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controler/onpording.dart';
import '../../data/datasource/onpoandingdatasource.dart';
import '../../core/contest/colorapp.dart';

class customponding extends GetView<controlonpordingapp> {
  @override
  Widget build(BuildContext context) {
    controllang cl = controllang();
    return Expanded(
      flex: 4,
      child: PageView.builder(
          onPageChanged: (c) {
            controller.onchanged(c);
          },
          controller: controller.control,
          itemCount: onpoandingdatasource.datasource.length,
          itemBuilder: (context, i) {
            return Container(
                color: colorapp.backgroundcolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text("${onpoandingdatasource.datasource[i].title}",
                        style:
                            TextStyle(color: colorapp.textcolor, fontSize: 20)),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      // color: colorapp.backgroundcolor,
                      height: 270,
                      width: 210,
                      child: Image.asset(
                        "${onpoandingdatasource.datasource[i].imageasset}",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "${onpoandingdatasource.datasource[i].body}",
                      style: TextStyle(color: colorapp.textcolor, fontSize: 12),
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ));
          }),
    );
  }
}

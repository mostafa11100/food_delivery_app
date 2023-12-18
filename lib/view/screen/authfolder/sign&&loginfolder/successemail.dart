import 'package:ecomerce_app/core/contest/approuts.dart';
import 'package:ecomerce_app/core/contest/colorapp.dart';
import 'package:ecomerce_app/view/widget/signinwidget/butonsendsignindata.dart';
import 'package:ecomerce_app/view/widget/signinwidget/textsignin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/function/alertdialogpop.dart';

class successemail extends StatelessWidget {
  const successemail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
      onWillPop: alertpop,
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            textcustom(text: "30", fontsize: 25),
            SizedBox(height: 50),
            Icon(
              Icons.check_circle_outline,
              size: 200,
              color: colorapp.buttoncolor,
            ),
            Spacer(),
            Container(
                width: double.infinity,
                child: signinapp(
                  text: "33",
                  onpresed: () {
                    Get.toNamed(approuts.rout);
                  },
                )),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    ));
  }
}

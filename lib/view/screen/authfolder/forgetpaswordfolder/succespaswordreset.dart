import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/contest/approuts.dart';

import '../../../widget/signinwidget/butonsendsignindata.dart';
import '../../../widget/signinwidget/textsignin.dart';
import '../../../../core/contest/colorapp.dart';

class successreset extends StatelessWidget {
  const successreset({super.key});

  @override
  Widget build(BuildContext context) {
    print("succes resesettt0");
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            textcustom(text: "39", fontsize: 25),
            SizedBox(height: 5),
            textcustom(text: "38", fontsize: 15),
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
                  text: "Continue",
                  onpresed: () {
                    Get.offAllNamed(approuts.rout);
                  },
                )),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}

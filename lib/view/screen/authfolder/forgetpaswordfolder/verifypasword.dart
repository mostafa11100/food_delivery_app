import 'package:ecomerce_app/core/contest/colorapp.dart';
import 'package:ecomerce_app/core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'package:ecomerce_app/view/widget/signinwidget/textsignin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../../../controler/auth/signin&&signupfloder/signincontroler.dart';
import '../../../../../../controler/auth/forgetpaswordfolder/verifypascontroler.dart';
import '../../../../../../controler/auth/forgetpaswordfolder/veryficontroler.dart';
import '../../../../../../core/contest/imageassetaddress.dart';
import '../../../../core/function/alertdialogpop.dart';

class verifyemail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    veryfiemailcontroelr controler = Get.put(veryfiemailcontroelr());
    return Scaffold(
        body: WillPopScope(
      onWillPop: alertpop,
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 40, left: 30, right: 30),
        margin: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            textcustom(
              text: "check code",
              fontsize: 30,
            ),
            SizedBox(
              height: 15,
            ),
            textcustom(
              text: "Please Enter The Digit Code \nSent To Your Email",
              fontsize: 10,
            ),
            SizedBox(
              height: 15,
            ),
            OtpTextField(
              borderRadius: BorderRadius.circular(40),
              fieldWidth: 40,
              numberOfFields: 5,
              borderColor: colorapp.buttoncolor,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                print("ennnnnnnnnd");
                controler.gotoresetpasword();
                print(verificationCode);
              }, // end onSubmit
            ),
          ],
        ),
        // Column(

        // ),
      ),
    ));
  }
}

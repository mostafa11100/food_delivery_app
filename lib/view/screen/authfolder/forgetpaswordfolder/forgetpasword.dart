import 'package:ecomerce_app/core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'package:ecomerce_app/view/widget/signinwidget/textsignin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../controler/auth/forgetpaswordfolder/forgetpasscontroler.dart';
import '../../../../../../controler/auth/signin&&signupfloder/signincontroler.dart';
import '../../../../../../core/contest/imageassetaddress.dart';

import '../../../../core/function/alertdialogpop.dart';
import '../../../../core/function/functionaut/validatcuntion.dart';
import '../../../widget/signinwidget/butonsendsignindata.dart';
import '../../../widget/signinwidget/textformfeild.dart';

class forgetpasword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    forgetpasscontroler controle = Get.put(forgetpasscontroler());

    print("forget");
    return Scaffold(
        body: WillPopScope(
      onWillPop: alertpop,
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 40, left: 30, right: 30),
        margin: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            //SizedBox(height: 60,),
            textcustom(
              text: '16',
              fontsize: 28,
            ),
            SizedBox(
              height: 50,
            ),
            textcustom(
              text: '12',
              fontsize: 32,
            ),
            SizedBox(
              height: 20,
            ),
            textcustom(
              text: '31'.tr,
              fontsize: 13,
            ),
            SizedBox(
              height: 30,
            ),
            textwidget(
              validat: (val) {
                return validatfunction(type: "email", val: val);
              },
              title: "email",
              control: controle.email!,
              icon: const Icon(Icons.email_outlined),
              type: false,
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 28,
            ),
            signinapp(
              text: '32',
              onpresed: () {
                controle.gotoverifycode();
              },
            ),
          ],
        ),
        // Column(

        // ),
      ),
    ));
  }
}

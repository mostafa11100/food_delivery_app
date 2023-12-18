import 'package:ecomerce_app/core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'package:ecomerce_app/view/widget/signinwidget/butonsendsignindata.dart';
import 'package:ecomerce_app/view/widget/signinwidget/textformfeild.dart';
import 'package:ecomerce_app/view/widget/signinwidget/textresetpasword.dart';
import 'package:ecomerce_app/view/widget/signinwidget/textsignin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../controler/auth/signin&&signupfloder/signincontroler.dart';
import '../../../../../../controler/auth/forgetpaswordfolder/verifypascontroler.dart';
import '../../../../../../core/contest/imageassetaddress.dart';
import '../../../../core/function/alertdialogpop.dart';
import '../../../../core/function/functionaut/validatcuntion.dart';

class resetpasword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    resetpaswordcontroler controle = Get.put(resetpaswordcontroler());
    return Scaffold(
        body: WillPopScope(
      onWillPop: alertpop,
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 40, left: 30, right: 30),
        margin: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            Form(
                key: controle.key2,
                child: Column(
                  children: [
                    textcustom(
                      text: '36', //newpasword
                      fontsize: 28,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    textreset(
                      title: "37".tr,
                      control: controle.pasword!,
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    textwidget(
                      security: true,
                      validat: (val) {
                        return validatfunction(type: "newpasword", val: val);
                      },
                      title: "37".tr,
                      control: controle.resetpasword!,
                      icon: const Icon(Icons.remove_red_eye),
                      type: false,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    signinapp(
                      text: '35',
                      onpresed: () {
                        controle.gotosuccesreset();
                      },
                    ),
                  ],
                ))
            //SizedBox(height: 60,),
          ],
        ),
        // Column(

        // ),
      ),
    ));
  }
}

import 'package:ecomerce_app/core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controler/auth/signin&&signupfloder/signincontroler.dart';
import '../../../../controler/auth/signin&&signupfloder/signupcontroler.dart';
import '../../../../core/contest/imageassetaddress.dart';
import '../../../../core/function/alertdialogpop.dart';
import '../../../../core/function/functionaut/validatcuntion.dart';
import '../../../widget/signinwidget/butonsendsignindata.dart';
import '../../../widget/signinwidget/custombuttonsignin.dart';
import '../../../widget/signinwidget/image.dart';
import '../../../widget/signinwidget/linksignup.dart';
import '../../../widget/signinwidget/textformfeild.dart';
import '../../../widget/signinwidget/textsignin.dart';

class signup extends StatelessWidget {
  signup({super.key});

  /////////////////////////////////////////
  ///
  ///
  @override
  Widget build(BuildContext context) {
    signupcontroler controle = Get.find();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController pasword = TextEditingController();

    return Scaffold(
        body: WillPopScope(
      onWillPop: alertpop,
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 40, left: 30, right: 30),
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Form(
                key: controle.key2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 17,
                    ),
                    const textcustom(text: "19", fontsize: 25),
                    SizedBox(
                      height: 50,
                    ),
                    const textcustom(text: "12", fontsize: 34),
                    SizedBox(
                      height: 20,
                    ),
                    const textcustom(text: "26", fontsize: 14),
                    SizedBox(
                      height: 45,
                    ),
                    textwidget(
                      type: false,
                      validat: (val) {
                        return validatfunction(
                          type: 'username',
                          val: val,
                        );
                      },
                      title: "username",
                      control: controle.username!,
                      icon: const Icon(Icons.person),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textwidget(
                      type: false,
                      validat: (val) {
                        return validatfunction(type: 'email', val: val);
                      },
                      title: "email",
                      control: controle.email!,
                      icon: const Icon(Icons.email_outlined),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textwidget(
                      type: true,
                      validat: (val) {
                        return validatfunction(type: 'phone', val: val);
                      },
                      title: "phone",
                      control: controle.phone!,
                      icon: const Icon(Icons.phone_android_outlined),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textwidget(
                      security: true,
                      type: false,
                      validat: (val) {
                        return validatfunction(
                            val: val, type: 'pasword', min: 5, max: 40);
                      },
                      title: "pasword",
                      control: controle.pasword!,
                      icon: const Icon(Icons.lock_outlined),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    signinapp(
                      text: '19',
                      onpresed: () {
                        controle.gototcheckeail();
                      },
                    ),
                    SizedBox(height: 18),
                    linksignup(
                      text2: '28',
                      onpressed: () {
                        controle.gtotosgnin();
                      },
                      text: '27',
                    )
                  ],
                ))
          ],
        ),
        // Column(

        // ),
      ),
    ));
  }
}

import 'package:ecomerce_app/core/lcoalization/languagehandingfloder/controllanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controler/auth/signin&&signupfloder/signincontroler.dart';
import '../../../../core/contest/imageassetaddress.dart';
import '../../../../core/function/alertdialogpop.dart';
import '../../../../core/function/functionaut/validatcuntion.dart';
import '../../../widget/signinwidget/butonsendsignindata.dart';
import '../../../widget/signinwidget/custombuttonsignin.dart';
import '../../../widget/signinwidget/image.dart';
import '../../../widget/signinwidget/linksignup.dart';
import '../../../widget/signinwidget/textformfeild.dart';
import '../../../widget/signinwidget/textsignin.dart';

class login extends GetView<signcontroler> {
  login({super.key});
  GlobalKey<FormState>? formkey;
  void fun() {
    FormState? stat = formkey?.currentState;
    if (stat!.validate())
      print("its null");
    else
      print(stat!.validate());
  }

  @override
  Widget build(BuildContext context) {
    formkey = GlobalKey<FormState>();

    return Scaffold(
      body: WillPopScope(
          onWillPop: alertpop,
          child: Container(
              padding: EdgeInsets.only(bottom: 20, left: 30, right: 30),
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                children: [
                  Form(
                    key: formkey,

                    child: Column(
                      children: [
                        //   SizedBox(
                        //  //   height: 5,
                        //   ),
                        const textcustom(text: "11", fontsize: 30),
                        SizedBox(
                          height: 11,
                        ),
                        imaglogo(linklogo: imageassetaddress.logo),
                        SizedBox(
                          height: 11,
                        ),
                        const textcustom(text: "12", fontsize: 18),
                        SizedBox(
                          height: 16,
                        ),
                        const textcustom(text: "13", fontsize: 12),
                        SizedBox(
                          height: 35,
                        ),
                        textwidget(
                          validat: (vall) {
                            print("valalalalalalala  = = = $vall");
                            return validatfunction(
                              min: 4,
                              max: 40,
                              val: vall,
                              type: "email",
                            );
                          },
                          title: "email",
                          control: controller.email!,
                          icon: const Icon(Icons.email_outlined),
                          type: false,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        textwidget(
                          security: true,
                          validat: (val) {
                            print("valalalalalalala  = = = $val");
                            return validatfunction(
                                val: val, type: 'pasword', max: 16, min: 5);
                          },
                          title: "pasword",
                          control: controller.pasword!,
                          icon: const Icon(Icons.lock_outline_sharp),
                          type: false,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              custombuttonsignin(onpressed: () {
                                controller.gotoforgetpaswrd();
                                print("cliked");
                              }),
                            ]),
                        SizedBox(
                          height: 22,
                        ),
                        signinapp(
                          text: '10',
                          onpresed: () {
                            print("xc =  =  $xc");
                            fun();
                          },
                        ),
                        SizedBox(height: 13),
                        linksignup(
                          text2: '19',
                          onpressed: () {
                            controller.signup();
                          },
                          text: '18',
                        )
                      ],
                    ),
                    // Column(

                    // ),
                  ),
                ],
              ))),
    );
  }
}

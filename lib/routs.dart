import 'package:ecomerce_app/view/screen/authfolder/forgetpaswordfolder/forgetpasword.dart';
import 'package:ecomerce_app/view/screen/authfolder/sign&&loginfolder/login.dart';
import 'package:ecomerce_app/view/screen/authfolder/forgetpaswordfolder/forgetpasword.dart';
import 'package:ecomerce_app/view/screen/authfolder/sign&&loginfolder/successemail.dart';
import 'package:ecomerce_app/view/screen/authfolder/sign&&loginfolder/verifycodetocreateacount.dart';
import 'package:ecomerce_app/view/screen/onpoandringfolder/language.dart';
import 'package:ecomerce_app/view/screen/onpoandringfolder/onpoarding.dart';
import 'package:ecomerce_app/view/screen/authfolder/forgetpaswordfolder/resetpasword.dart';
import 'package:ecomerce_app/view/screen/authfolder/sign&&loginfolder/signup.dart';
import 'package:ecomerce_app/view/screen/authfolder/forgetpaswordfolder/succespaswordreset.dart';

import 'package:ecomerce_app/view/screen/authfolder/forgetpaswordfolder/verifypasword.dart';
import 'package:ecomerce_app/view/screen/authfolder/forgetpaswordfolder/resetpasword.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';

import 'core/contest/approuts.dart';
import 'middleware/midlware.dart';

class routs {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
        name: approuts.languaapp,
        page: () => languageapp(),
        middlewares: [mdlware()]),
    GetPage(
      name: approuts.rout,
      page: () => login(),
    ),
    GetPage(
      name: approuts.routonpondiring,
      page: () => Onpoarding(),
    ),
    GetPage(name: approuts.signuprout, page: () => signup()),
    GetPage(
      name: approuts.forgetpasword,
      page: () => forgetpasword(),
    ),
    GetPage(
      name: approuts.verifyemail,
      page: () => verifyemail(),
    ),
    GetPage(
      name: approuts.verifypasword,
      page: () => resetpasword(),
    ),
    GetPage(
      name: approuts.successreset,
      page: () => successreset(),
    ),
    GetPage(
      name: approuts.successemail,
      page: () => successemail(),
    ),
    GetPage(
      name: approuts.verifycodeemail,
      page: () => verifyemailcode(),
    )
  ];
}

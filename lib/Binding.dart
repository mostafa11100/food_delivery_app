import 'package:get/get.dart';

import 'controler/auth/signin&&signupfloder/signincontroler.dart';
import 'controler/auth/signin&&signupfloder/signupcontroler.dart';
import 'core/lcoalization/languagehandingfloder/controllanguage.dart';

class myBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => signupcontroler(), fenix: true);

    Get.lazyPut(() => signcontroler(), fenix: true);
  }
}

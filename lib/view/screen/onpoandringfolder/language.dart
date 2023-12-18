import 'package:ecomerce_app/view/widget/language/customlangbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/lcoalization/languagehandingfloder/controllanguage.dart';
import '../../../core/services/sharedprefrencesservices.dart';
import '../../widget/customeelevatedbutton.dart';

class languageapp extends GetView<controllang> {
  const languageapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            custombuttonlang(
              onpressed: () {
                print("ana");
                controller.onchang1('ar');

                Get.toNamed('/onpondring');
              },
              Textbutton: "عربي",
            ),
            SizedBox(
              height: 8,
            ),
            custombuttonlang(
                onpressed: () {
                  controller.onchang1('en');

                  Get.toNamed('/onpondring');
                },
                Textbutton: "English"),
          ],
        ),
      ),
    );
  }
}

// class ex extends GetView<controllang> {
//   @override
//   Widget build(BuildContext context) {
//     Get.lazyPut(() => controllang(), fenix: true);
//     return Scaffold(
//       body: Container(
//         child: Center(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           custombuttonlang(
//             onpressed: () {
//               print("ana");
//               // controller.onchang1('ar');
//               controller.cream();

//               //   Get.toNamed('/login');
//             },
//             Textbutton: "1".tr,
//           ),
//           Text("${controller.xx}")
//         ])),
//       ),
//     );
//   }
// }

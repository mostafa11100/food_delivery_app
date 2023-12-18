import 'package:get/get.dart';

dynamic validatfunction({int? min = 6, int? max = 1000, val, type}) {
  print("val=[$val ]");
  if (type == "email") {
    if (!GetUtils.isEmail(val.toString())) {
      return "42".tr;
    } else
      return null;
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val.toString())) {
      return "45".tr;
    } else
      return null;
  }
  if (type == "username") {
    print("username enter here ");
    if (!GetUtils.isUsername(val.toString())) {
      print(
          "username enter here and    ${GetUtils.isUsername(val.toString())} ");
      return "43".tr;
    } else
      return null;
  }
  print(val.toString());
  if (val.toString().length < min!) {
    String s = '41'.tr;
    s += "$min";
    return s;
  }

  if (val.toString().length > max!) {
    String s = '44'.tr;
    s += "$max";
    return s;
  }

  return null;
  //if()
}

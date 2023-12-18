import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class textcustom extends StatelessWidget {
  const textcustom({super.key, required this.text, required this.fontsize});
  final String text;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    print(
        "stattat = = = = = = = ${Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: fontsize, fontWeight: FontWeight.bold).toString()}");
    return Text(
        textAlign: TextAlign.center,
        "$text".tr,
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(fontSize: fontsize));
  }
}

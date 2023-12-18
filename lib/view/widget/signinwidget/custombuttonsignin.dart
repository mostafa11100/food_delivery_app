import 'package:flutter/material.dart';
import 'package:get/get.dart';

class custombuttonsignin extends StatelessWidget {
  const custombuttonsignin({super.key, required this.onpressed});
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: onpressed,
      child: Text(
        "16".tr,
        textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    ));
  }
}

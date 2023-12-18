import 'package:ecomerce_app/core/contest/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class linksignup extends StatelessWidget {
  const linksignup(
      {super.key,
      required this.onpressed,
      required this.text,
      required this.text2});

  final Function() onpressed;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text.tr,
          style: TextStyle(fontSize: 12),
        ),
        InkWell(
          onTap: onpressed,
          child: Text(
            "$text2".tr,
            style: TextStyle(fontSize: 16, color: colorapp.buttoncolor),
          ),
        )
      ],
    );
  }
}

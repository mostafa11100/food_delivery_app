import 'package:ecomerce_app/core/contest/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signinapp extends StatelessWidget {
  const signinapp({super.key, required this.text, required this.onpresed});
  final String text;
  final Function() onpresed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorapp.buttoncolor,
      ),
      child: MaterialButton(
          onPressed: onpresed,
          child: Container(
              width: 180,
              height: 34,
              child: Center(
                child: Text(
                  '$text'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: colorapp.fontcolor),
                ),
              ))),
    );
  }
}

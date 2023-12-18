import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/contest/colorapp.dart';

class custombuttonlang extends StatelessWidget {
  String? Textbutton;
  void Function()? onpressed;
  custombuttonlang({this.Textbutton, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 30,
        //  color: colorapp.backgroundcolor,
        child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: colorapp.buttoncolor),
            onPressed: onpressed,
            child: Text(
              "$Textbutton",
              style: Theme.of(context).textTheme.titleSmall,
            )));
  }
}

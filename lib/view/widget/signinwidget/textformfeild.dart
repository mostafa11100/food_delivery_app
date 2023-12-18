import 'package:flutter/material.dart';

String xc = "noerror";

class textwidget extends StatelessWidget {
  textwidget({
    super.key,
    this.validat,
    required this.title,
    required this.control,
    required this.icon,
    required this.type,
    this.security,
  });
  final bool? security;
  final bool type;
  //// prameters
  final String? Function(String?)? validat;
  TextEditingController control;
  String title;
  Icon icon;
//////////
  @override
  Widget build(BuildContext context) {
    //String? Function(String?) v;
    return TextFormField(
      obscureText: true,
      keyboardType: type ? TextInputType.phone : TextInputType.text,
      validator: validat,
      controller: control,
      decoration: InputDecoration(
          suffixIcon: icon,
          hintText: "enter your $title",
          hintStyle: TextStyle(fontSize: 10),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            "$title",
            style: TextStyle(fontSize: 20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}

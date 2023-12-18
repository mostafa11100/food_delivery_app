import 'package:flutter/material.dart';

class textreset extends StatelessWidget {
  textreset(
      {super.key,
      required this.title,
      required this.control,
      required this.icon});
  TextEditingController control;
  String title;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: control,
      decoration: InputDecoration(
          suffixIcon: icon,
          hintText: "enter $title",
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

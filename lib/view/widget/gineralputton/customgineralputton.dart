import 'package:flutter/material.dart';

class gineralputton extends StatelessWidget {
  const gineralputton(
      {super.key,
      required this.ontap,
      required this.name,
      required this.color,
      required this.fontsize,
      required this.width});
  final Function() ontap;
  final String name;
  final Color color;
  final double fontsize;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: ontap,
        // ignore: prefer_const_constructors
        child: Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: fontsize, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

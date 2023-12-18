import 'package:flutter/material.dart';

class imaglogo extends StatelessWidget {
  const imaglogo({super.key, required this.linklogo});
  final String linklogo;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      linklogo,
      width: 200,
      height: 200,
    );
  }
}

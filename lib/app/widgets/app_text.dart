import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  Color fontColor;
  double fontSize;
  FontWeight fontWeight;

  AppText(
      {required this.text,
      this.fontColor = Colors.white,
      this.fontSize = 15,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: fontColor, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}

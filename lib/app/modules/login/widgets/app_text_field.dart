import 'package:auth_login_app/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String hintText;
  Color hintFontColor;
  TextInputType textInputType;
  bool obscureText;

  AppTextField(
      {Key? key,
      required this.hintText,
      this.hintFontColor = Colors.white,
      this.textInputType = TextInputType.text,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.darkBlue.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: hintFontColor),
            counterText: '',
            border: InputBorder.none),
      ),
    );
  }
}

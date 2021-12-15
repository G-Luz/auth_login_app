import 'dart:io';

import 'package:auth_login_app/app/constants/app_colors.dart';
import 'package:auth_login_app/app/modules/login/widgets/app_text_field.dart';
import 'package:auth_login_app/app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/app_bg_01.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: AppColors.lightBlue.withOpacity(0.4),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "lets_go".tr(),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        AppText(
                          text: "Acesse o app com seu email ou sua digital",
                          fontSize: 15,
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: AppTextField(
                      hintText: 'email_example'.tr(),
                      textInputType: TextInputType.emailAddress,
                      hintFontColor: Colors.white.withOpacity(0.5),
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: AppTextField(
                      hintText: '******',
                      obscureText: true,
                      hintFontColor: Colors.white.withOpacity(0.5),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: AppText(
                          text: "forgot_password".tr(),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("login".tr().toUpperCase()),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.darkBlue.withOpacity(0.8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        AppText(
                          text: 'or'.tr(),
                        ),
                        AppText(
                          text: "use_biometric".tr(),
                        ),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    checkBiometrics();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            color: AppColors.darkBlue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Icon(Icons.fingerprint,
                            size: 60, color: AppColors.opacityWhite),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> checkBiometrics() async {
    await auth.authenticate(
        localizedReason: 'unlock_app'.tr(),
        useErrorDialogs: false,
        stickyAuth: true);
  }
}

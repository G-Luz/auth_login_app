import 'package:auth_login_app/app/app.dart';
import 'package:auth_login_app/app/app_module.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('pt', 'BR'), Locale('en', 'US')],
      path: 'assets/translations',
      // <-- change the path of the translation files
      // fallbackLocale: Locale('en', 'US'),
      fallbackLocale: Locale('pt', 'BR'),
      child: ModularApp(module: AppModule(), child: App()),
    ),
  );
}

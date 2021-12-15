import 'package:auth_login_app/app/modules/login/login_module.dart';
import 'package:auth_login_app/app/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Routes.initialRoute, module: LoginModule()),
  ];
}

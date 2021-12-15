import 'package:auth_login_app/app/modules/login/controller/login_controller.dart';
import 'package:auth_login_app/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const LoginPage()),
  ];
}

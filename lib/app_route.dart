import 'package:get/get.dart';
import 'package:tik_tok_app_flutter/ui/screens/auth/login_screen.dart';
import 'package:tik_tok_app_flutter/ui/screens/auth/register_screen.dart';

class RouteNames {
  static String loginScreen = "/LoginScreen";
  static String registerScreen = "/registerScreen ";
}

class AppRoute {
  static final route = [
    GetPage(name: RouteNames.loginScreen, page: () => LoginScreen()),
    GetPage(name: RouteNames.registerScreen, page: () => RegisterScreen()),
  ];
}

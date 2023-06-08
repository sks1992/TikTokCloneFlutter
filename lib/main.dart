import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tik_tok_app_flutter/app_route.dart';
import 'package:tik_tok_app_flutter/core/util/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      initialRoute: RouteNames.loginScreen,
      getPages: AppRoute.route,
      enableLog: true,
    );
  }
}

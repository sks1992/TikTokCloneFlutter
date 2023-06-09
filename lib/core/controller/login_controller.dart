import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController userController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    userController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    userController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}

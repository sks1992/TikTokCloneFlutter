import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tik_tok_app_flutter/core/controller/login_controller.dart';
import 'package:tik_tok_app_flutter/core/util/constants.dart';

import '../../widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "TikTok Clone",
                style: TextStyle(
                    fontSize: 35,
                    color: buttonColor,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: controller.emailController,
                icon: Icons.email_outlined,
                labelText: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: controller.passwordController,
                icon: Icons.lock,
                labelText: "Password",
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Done"))
            ],
          ),
        ),
      ),
    );
  }
}

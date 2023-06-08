import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tik_tok_app_flutter/app_route.dart';
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
          //width: MediaQuery.of(context).size.width,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tok Tok Clone",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: buttonColor),
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: controller.emailController,
                  icon: Icons.email_outlined,
                  labelText: "Email",
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: controller.passwordController,
                  icon: Icons.lock,
                  labelText: "Password",
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: Get.width - 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ?",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(RouteNames.registerScreen);
                    },
                    child: Text(
                      "Register Here",
                      style: TextStyle(
                        fontSize: 20,
                        color: buttonColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

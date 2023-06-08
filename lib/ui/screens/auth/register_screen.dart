import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tik_tok_app_flutter/app_route.dart';
import 'package:tik_tok_app_flutter/core/controller/register_controller.dart';
import 'package:tik_tok_app_flutter/ui/widgets/text_input_field.dart';

import '../../../core/util/constants.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final controller = Get.put(RegisterController());

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
                "Register",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              const Stack(
                children: [
                  CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                      backgroundColor: Colors.black),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Icon(Icons.camera_alt),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: controller.emailController,
                  icon: Icons.person,
                  labelText: "UserName",
                  textInputType: TextInputType.emailAddress,
                ),
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
                    "Register",
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
                    "Already have an account ?",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(RouteNames.loginScreen);
                    },
                    child: Text(
                      "Login Here",
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

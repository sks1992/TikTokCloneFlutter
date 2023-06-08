import 'package:flutter/material.dart';
import 'package:tik_tok_app_flutter/core/util/constants.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.icon,
      this.obscureText = false,
      this.textInputType = TextInputType.text})
      : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.next,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      obscureText: obscureText,
    );
  }
}

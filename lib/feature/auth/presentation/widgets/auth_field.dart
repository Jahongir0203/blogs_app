import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isVisible = false});

  final TextEditingController controller;
  final String hintText;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isVisible,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}

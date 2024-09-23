import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
    );
  }
}

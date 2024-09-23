import 'package:blogs_app/feature/auth/presentation/widgets/auth_field.dart';
import 'package:blogs_app/feature/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Sign Up.",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthField(
              hintText: "Name",
              controller: nameController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: "Email",
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: "Password",
              controller: passwordController,
              isVisible: true,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthGradientButton(
              buttonText: "Sign up",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.gradient2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

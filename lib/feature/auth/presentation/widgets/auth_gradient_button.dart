import 'package:blogs_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton(
      {super.key, required this.buttonText, required this.onPressed});

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [AppColors.gradient1, AppColors.gradient2],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width, 50),
            backgroundColor: AppColors.transparentColor,
            shadowColor: AppColors.transparentColor),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

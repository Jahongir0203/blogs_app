import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'feature/auth/presentation/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppThemes.darkTheme,
      home: const SignUpPage(),
    );
  }
}

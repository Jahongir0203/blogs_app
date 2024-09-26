import 'package:blogs_app/core/secrets/app_secrets.dart';
import 'package:blogs_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:blogs_app/feature/auth/data/repository/auth_repository_impl.dart';
import 'package:blogs_app/feature/auth/domain/usecases/user_sign_up.dart';
import 'package:blogs_app/feature/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/theme/theme.dart';
import 'feature/auth/presentation/pages/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.anonKey);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            UserSignUp(
              AuthRepositoryImpl(
                AuthRemoteDataSourceImpl(supabaseClient: supabase.client),
              ),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppThemes.darkTheme,
      home: const SignInPage(),
    );
  }
}

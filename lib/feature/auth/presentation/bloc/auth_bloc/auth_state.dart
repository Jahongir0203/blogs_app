part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSuccessState extends AuthState {
  final String uid;

  const AuthSuccessState({required this.uid});
}

class AuthFailureState extends AuthState {
  final String failure;

  const AuthFailureState({required this.failure});
}

import 'package:bloc/bloc.dart';
import 'package:blogs_app/feature/auth/domain/usecases/user_sign_up.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;

  AuthBloc(final UserSignUp userSignUp)
      : _userSignUp = userSignUp,
        super(AuthInitialState()) {
    on<AuthSignUpEvent>(
      (event, emit) async {
        emit(AuthLoadingState());
        final res = await _userSignUp(
          UserSignUpParams(
              name: event.name, email: event.email, password: event.password),
        );

        res.fold(
          (l) => emit(
            AuthFailureState(failure: l.errorMessage),
          ),
          (r) => emit(
            AuthSuccessState(uid: r),
          ),
        );
      },
    );
  }
}

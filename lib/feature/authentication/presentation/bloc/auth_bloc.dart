import 'package:e_commerce_app/core/bloc/common_state_bloc.dart';
import 'package:e_commerce_app/feature/authentication/domain/usecase/user_signin.dart';
import 'package:e_commerce_app/feature/authentication/domain/usecase/user_signup.dart';
import 'package:e_commerce_app/feature/authentication/presentation/bloc/auth_bloc_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, BaseState> {
  final SignUpUseCase signUpUseCase;
  final SignInUseCase signInUseCase;

  AuthBloc(this.signUpUseCase, this.signInUseCase) : super(InitialState()) {
    on<SignUpEvent>((event, emit) async {
      emit(LoadingState());

      try {
        final user = await signUpUseCase(
          email: event.email,
          password: event.password,
          fullName: event.fullName,
        );
        emit(SuccessState(user));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });

    on<SignInEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final user = await signInUseCase.call(
          email: event.email,
          password: event.password,
        );
        emit(SuccessState(user));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });
  }
}

import 'package:e_commerce_app/feature/authentication/domain/entities/user_entities.dart';
import 'package:e_commerce_app/feature/authentication/domain/respositories/auth_respositories.dart';

class SignInUseCase {
  final AuthRepository authRepository;

  SignInUseCase(this.authRepository);

  Future<UserEntity> call({required String email, required String password}) {
    return authRepository.signIn(email: email, password: password);
  }
}

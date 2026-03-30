import 'package:e_commerce_app/feature/authentication/domain/entities/user_entities.dart';
import 'package:e_commerce_app/feature/authentication/domain/respositories/auth_respositories.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<UserEntity> call({
    required String email,
    required String password,
    required String fullName,
  }) {
    return repository.signUp(
      email: email,
      password: password,
      fullName: fullName,
    );
  }
}

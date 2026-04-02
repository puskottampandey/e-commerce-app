import 'package:e_commerce_app/feature/authentication/domain/entities/user_entities.dart';

abstract class AuthRepository {
  Future<UserEntity> signUp({
    required String email,
    required String password,
    required String fullName,
  });
  Future<UserEntity> signIn({required String email, required String password});
}

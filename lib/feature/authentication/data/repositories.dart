import 'package:e_commerce_app/feature/authentication/data/firebase.dart';
import 'package:e_commerce_app/feature/authentication/domain/entities/user_entities.dart';
import 'package:e_commerce_app/feature/authentication/domain/respositories/auth_respositories.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<UserEntity> signUp({
    required String email,
    required String password,
    required String fullName,
  }) async {
    try {
      return await remoteDataSource.signUp(email, password, fullName);
    } catch (e) {
      rethrow;
    }
  }
}

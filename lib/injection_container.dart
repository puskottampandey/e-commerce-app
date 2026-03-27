import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/feature/authentication/data/firebase.dart';
import 'package:e_commerce_app/feature/authentication/data/repositories.dart';
import 'package:e_commerce_app/feature/authentication/domain/respositories/auth_respositories.dart';
import 'package:e_commerce_app/feature/authentication/domain/usecase/user_signup.dart';
import 'package:e_commerce_app/feature/authentication/presentation/bloc/signup_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => AuthBloc(sl()));

  // UseCase
  sl.registerLazySingleton(() => SignUpUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  // DataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl(), sl()),
  );

  // Firebase
  sl.registerLazySingleton(() => FirebaseAuth.instance);
  sl.registerLazySingleton(() => FirebaseFirestore.instance);
}

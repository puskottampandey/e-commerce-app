import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/feature/authentication/data/models.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signUp(String email, String password, String fullName);
  Future<UserModel> signIn(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRemoteDataSourceImpl(this.auth, this.firestore);

  @override
  Future<UserModel> signUp(
    String email,
    String password,
    String fullName,
  ) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user!;
      final userModel = UserModel.fromFirebase(user, fullName);
      await firestore.collection('users').doc(user.uid).set(userModel.toJson());
      return userModel;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user!;
      final doc = await firestore.collection("users").doc(user.uid).get();
      return UserModel.fromJson(doc.data()!);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }
}

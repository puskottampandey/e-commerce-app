import 'package:e_commerce_app/feature/authentication/domain/entities/user_entities.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.uid,
    required super.email,
    required super.fullName,
  });

  factory UserModel.fromFirebase(user, String fullName) {
    return UserModel(uid: user.uid, email: user.email, fullName: fullName);
  }

  Map<String, dynamic> toJson() {
    return {
      "uid": uid,
      "email": email,
      "fullName": fullName,
      "createdAt": DateTime.now(),
    };
  }
}

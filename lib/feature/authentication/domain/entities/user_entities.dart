import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? uid;
  final String fullName;
  final String email;

  const UserEntity({
    required this.uid,
    required this.fullName,
    required this.email,
  });

  @override
  List<Object?> get props => [uid, fullName, email];
}

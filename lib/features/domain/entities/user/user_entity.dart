import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({required this.email, required this.password});

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}

import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({required this.email, required this.photoUrl});

  final String email;
  final String photoUrl;
  

  @override
  List<Object?> get props => [email, photoUrl];
}

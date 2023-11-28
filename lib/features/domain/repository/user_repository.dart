import 'package:flutter_beer_app/core/dto/firebase_dto/firebase_dto_exports.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<FirebaseDataState<UserEntity>> signInWithEmail(
      String email, String password);
  Future<FirebaseDataState<UserEntity>> signUpWithEmail(
      String email, String password);
  Future<FirebaseDataState<UserEntity>> signInWithGoogle();
  Future<FirebaseDataState<UserEntity>> signUpWithGoogle();
  Future<void> signOut();
}

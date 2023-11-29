import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_beer_app/config/dev_log/dev_log.dart';
import 'package:flutter_beer_app/core/dto/firebase_dto/firebase_dto_exports.dart';
import 'package:flutter_beer_app/features/data/data_source/remote/firebase/firebase_provider.dart';
import 'package:flutter_beer_app/features/data/models/user/user_model.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';
import 'package:flutter_beer_app/features/domain/repository/user_repository.dart';

class UserRepositoryImplements extends UserRepository {
  late FirebaseProvider firebaseProvider;

  UserRepositoryImplements() {
    firebaseProvider = FirebaseProvider();
  }

  @override
  Future<FirebaseDataState<UserEntity>> signInWithEmail(
      String email, String password) async {
    var result = await firebaseProvider.signInWithEmail(email, password);
    if (result is FirebaseDataSuccess) {
      return Future.value(FirebaseDataSuccess<UserEntity>(
          UserModel(email: email).convertToEntity()));
    } else {
      return Future.value(FirebaseDataFailed<UserEntity>(result.toString()));
    }
  }

  @override
  Future<FirebaseDataState<UserEntity>> signInWithGoogle() async {
    var result = await firebaseProvider.signInWithGoogle();
    if (result is FirebaseDataSuccess) {
      return Future.value(FirebaseDataSuccess<UserEntity>(
          UserModel(email: result.data!.email!).convertToEntity()));
    } else {
      return Future.value(FirebaseDataFailed<UserEntity>(result.toString()));
    }
  }

  @override
  Future<void> signOut() {
    return firebaseProvider.signOut();
  }

  @override
  Future<FirebaseDataState<UserEntity>> signUpWithEmail(
      String email, String password) async {
    var result = await firebaseProvider.signUpWithEmail(email, password);
    if (result is FirebaseDataSuccess) {
      return Future.value(FirebaseDataSuccess<UserEntity>(
          UserModel(email: email).convertToEntity()));
    } else {
      return Future.value(FirebaseDataFailed<UserEntity>(result.toString()));
    }
  }

  @override
  Future<FirebaseDataState<UserEntity>> signUpWithGoogle() async {
    var result = await firebaseProvider.signInWithGoogle();
    if (result is FirebaseDataSuccess) {
      return Future.value(FirebaseDataSuccess<UserEntity>(
          UserModel(email: result.data!.email!, photoUrl: result.data!.photoUrl)
              .convertToEntity()));
    } else {
      return Future.value(FirebaseDataFailed<UserEntity>(result.toString()));
    }
  }

  @override
  Future<FirebaseDataState<UserEntity>> getCurrentUser() async {
    FirebaseDataState? result = await firebaseProvider.getCurrentUser();
    DevLog.logInfo(result.toString());
    if (result is FirebaseDataSuccess && result.data != null) {
      User user = result.data as User;
      return FirebaseDataSuccess<UserEntity>(
          UserModel(photoUrl: user.photoURL, email: user.email)
              .convertToEntity());
    } else {
      return FirebaseDataFailed(result);
    }
  }
}

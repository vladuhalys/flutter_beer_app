import 'package:flutter_beer_app/core/dto/supabase_dto/supabase_dto_exports.dart';
import 'package:flutter_beer_app/features/data/data_source/remote/supabase/supabase_provider.dart';
import 'package:flutter_beer_app/features/data/models/user/user_model.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';
import 'package:flutter_beer_app/features/domain/repository/user_repository.dart';

class UserRepositoryImplements extends UserRepository {
  late SupabaseProvider supabaseProvider;

  UserRepositoryImplements() {
    supabaseProvider = SupabaseProvider();
  }

  @override
  Future<SupabaseDataState<UserEntity>> signInWithEmail(
      String email, String password) async {
    var result = await supabaseProvider.signInWithEmail(email, password);
    if (result is SupabaseDataSuccess) {
      return Future.value(SupabaseDataSuccess<UserEntity>(
          UserModel(email: email).convertToEntity()));
    } else {
      return Future.value(SupabaseDataFailed<UserEntity>(result.toString()));
    }
  }

  @override
  Future<SupabaseDataState<UserEntity>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<SupabaseDataState<UserEntity>> signUpWithEmail(
      String email, String password) async {
    var result = await supabaseProvider.signUpWithEmail(email, password);
    if (result is SupabaseDataSuccess) {
      return Future.value(SupabaseDataSuccess<UserEntity>(
          UserModel(email: email).convertToEntity()));
    } else {
      return Future.value(SupabaseDataFailed<UserEntity>(result.toString()));
    }
  }

  @override
  Future<SupabaseDataState<UserEntity>> signUpWithGoogle() {
    // TODO: implement signUpWithGoogle
    throw UnimplementedError();
  }
}

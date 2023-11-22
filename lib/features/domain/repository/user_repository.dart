import 'package:flutter_beer_app/core/dto/supabase_dto/supabase_dto_exports.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<SupabaseDataState<UserEntity>> signInWithEmail(
      String email, String password);
  Future<SupabaseDataState<UserEntity>> signUpWithEmail(
      String email, String password);
  Future<SupabaseDataState<UserEntity>> signInWithGoogle();
  Future<SupabaseDataState<UserEntity>> signUpWithGoogle();
  Future<void> signOut();
}

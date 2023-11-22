import 'package:flutter_beer_app/config/dev_log/dev_log.dart';
import 'package:flutter_beer_app/core/dto/supabase_dto/supabase_dto_exports.dart';
import 'package:flutter_beer_app/features/data/models/user/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseProvider {
  late SupabaseClient supabase;

  SupabaseProvider() {
    supabase = Supabase.instance.client;
  }

  Future<SupabaseDataState<UserModel>> signInWithEmail(
      String email, String password) async {
    try {
      // Виконуємо запит до API Supabase для авторизації користувача
      supabase = Supabase.instance.client;
      final AuthResponse response = await supabase.auth
          .signInWithPassword(password: password, email: email);
      final User? user = response.user;
      // Якщо запит успішний, отримуємо ідентифікатор користувача
      if (user != null) {
        UserModel userModel = UserModel(email: response.user?.email);
        return SupabaseDataSuccess(userModel);
      } else {
        return const SupabaseDataFailed('User not found');
      }
    } catch (e) {
      // Якщо виникла помилка, відключаємо користувача
      supabase.auth.signOut();
      return SupabaseDataFailed(e.toString());
    }
  }

  Future<SupabaseDataState> signUpWithEmail(
      String email, String password) async {
    try {
      // Виконуємо запит до API Supabase для реєстрації користувача
      AuthResponse response =
          await supabase.auth.signUp(email: email, password: password);
      DevLog.logError(
          'User ID: ${response.user?.id}, Session: ${response.session?.accessToken}');
      // Якщо запит успішний, отримуємо ідентифікатор користувача
      if (response.user != null) {
        return SupabaseDataSuccess(response);
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      // Якщо виникла помилка, відключаємо користувача
      supabase.auth.signOut();
      return SupabaseDataFailed(e.toString());
    }
  }

  Future<SupabaseDataState> signUpWithGoogle() async {
    try {
      // Виконуємо запит до API Supabase для реєстрації користувача через Google
      var response = await supabase.auth.signInWithOAuth(Provider.google);

      // Якщо запит успішний, отримуємо ідентифікатор користувача
      if (response) {
        return SupabaseDataSuccess(response);
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      // Якщо виникла помилка, відключаємо користувача
      supabase.auth.signOut();
      return SupabaseDataFailed(e.toString());
    }
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
}

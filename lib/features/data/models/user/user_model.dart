import 'package:flutter_beer_app/core/base/interface_model.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';

class UserModel implements IModel<UserEntity> {
  String? email;
  String? photoUrl;

  UserModel({
    this.email,
    this.photoUrl,
  });

  @override
  UserEntity convertToEntity() {
    return UserEntity(
      email: email ?? '',
      photoUrl: photoUrl ?? '',
    );
  }
}

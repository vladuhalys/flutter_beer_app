import 'package:flutter_beer_app/core/usecases/usecases.dart';
import 'package:flutter_beer_app/core/validator/validate_state.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';

class LoginUseCase implements UseCase<ValidateState<UserEntity>, int> {
  @override
  Future<ValidateState<UserEntity>> call({required int params}) {
    throw UnimplementedError();
  }
}

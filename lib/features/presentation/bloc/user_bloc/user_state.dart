part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _UserLoadingState;
  const factory UserState.error() = _UserErrorState;
  const factory UserState.loaded(UserEntity user) = _UserLoadedState;
}

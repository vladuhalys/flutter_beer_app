import 'dart:async';

import 'package:flutter_beer_app/core/dto/firebase_dto/base/firebase_dto_base.dart';
import 'package:flutter_beer_app/core/dto/firebase_dto/success/firebase_dto_success.dart';
import 'package:flutter_beer_app/features/domain/entities/user/user_entity.dart';
import 'package:flutter_beer_app/features/domain/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(UserRepository userRepository)
      : _userRepository = userRepository,
        super(const UserState.loading()) {
    on<_GetInfoUserEvent>(_onGetInfo);
  }

  final UserRepository _userRepository;

  FutureOr<void> _onGetInfo(_GetInfoUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    FirebaseDataState<UserEntity>? user = await _userRepository.getCurrentUser();
    

    if (user is FirebaseDataSuccess && user.data != null) {
      emit(UserState.loaded(user.data!));
    } 
    else {
      emit(const UserState.error());
    }
   
  }
}

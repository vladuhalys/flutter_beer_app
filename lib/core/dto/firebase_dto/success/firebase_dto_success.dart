import 'package:flutter_beer_app/core/dto/firebase_dto/base/firebase_dto_base.dart';

class FirebaseDataSuccess<T> extends FirebaseDataState<T> {
  const FirebaseDataSuccess(T data) : super(data: data);
}

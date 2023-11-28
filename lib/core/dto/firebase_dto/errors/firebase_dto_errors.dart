import 'package:flutter_beer_app/core/dto/firebase_dto/base/firebase_dto_base.dart';

class FirebaseDataFailed<T> extends FirebaseDataState<T> {
  const FirebaseDataFailed(Object error) : super(error: error);
}

import 'package:flutter_beer_app/core/dto/api_dto/base/api_dto_base.dart';

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

import 'package:dio/dio.dart';
import 'package:flutter_beer_app/core/dto/api_dto/base/api_dto_base.dart';

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}

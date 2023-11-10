import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

abstract class BeerRepository {
  Future<DataState<List<BeerEntity>>> getBeersPerPage(int page);
}


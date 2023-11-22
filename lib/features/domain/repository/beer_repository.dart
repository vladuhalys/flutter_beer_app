import 'package:flutter_beer_app/core/dto/api_dto/api_dto_exports.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

abstract class BeerRepository {
  Future<DataState<List<BeerEntity>>> getBeersPerPage(int page);
}

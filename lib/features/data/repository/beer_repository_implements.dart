import 'package:dio/dio.dart';
import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/features/data/data_source/remote/beer_api_service.dart';
import 'package:flutter_beer_app/features/data/models/beer/beer.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

import 'package:flutter_beer_app/features/domain/repository/beer_repository.dart';

class BeerRepositoryImplements extends BeerRepository {
  @override
  Future<DataState<List<BeerEntity>>> getBeersPerPage(int page) async {
    try {
      final response = await FetchDataFromApi.fetchPage(page: page).timeout(
        const Duration(seconds: 7),
        onTimeout: () {
          throw DioException.connectionTimeout(
            timeout: const Duration(seconds: 7),
            requestOptions: RequestOptions(),
          );
        },
      );
      List<BeerEntity> beers = [];
      response.data.forEach((beer) {
        beers.add(BeerModel.fromJson(beer).convertToEntity());
      });
      return DataSuccess(beers);
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}

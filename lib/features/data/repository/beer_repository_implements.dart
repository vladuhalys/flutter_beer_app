import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/features/data/data_source/remote/beer_api_service.dart';
import 'package:flutter_beer_app/features/data/models/beer/beer.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

import 'package:flutter_beer_app/features/domain/repository/beer_repository.dart';

class BeerRepositoryImplements extends BeerRepository {
  @override
  Future<DataState<List<BeerEntity>>> getBeersPerPage(int page) async{
    final response = await FetchDataFromApi.fetchPage(page: page);
    if (response.statusCode == HttpStatus.ok) {
        List<BeerEntity> beers = [];
        response.data.forEach((beer) {
          beers.add(BeerModel.fromJson(beer).convertToEntity());
        });
        return DataSuccess(beers);
      } else {
        return DataFailed(DioException(
            requestOptions: response.requestOptions,
            response: response.data,
            error: response.statusMessage));
      }
  }
}

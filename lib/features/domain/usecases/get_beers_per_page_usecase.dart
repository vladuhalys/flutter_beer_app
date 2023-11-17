import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/core/usecases/usecases.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_beer_app/features/domain/repository/beer_repository.dart';

class GetBeersPerPageUseCase
    implements UseCase<DataState<List<BeerEntity>>, int> {
  final BeerRepository _beerRepository;

  const GetBeersPerPageUseCase({
    required BeerRepository beerRepository,
  }) : _beerRepository = beerRepository;

  @override
  Future<DataState<List<BeerEntity>>> call({required int params}) {
    return _beerRepository.getBeersPerPage(params);
  }
}

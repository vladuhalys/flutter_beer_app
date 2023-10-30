import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/core/usecases/usecases.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_beer_app/features/domain/repository/beer_repository.dart';

class GetBeersPerPageUseCase
    implements UseCase<DataState<List<BeerEntity>>, void> {
  final BeerRepository _beerRepository;
  final int _page;

  GetBeersPerPageUseCase(this._beerRepository, this._page);
  @override
  Future<DataState<List<BeerEntity>>> call({void params}) {
    return _beerRepository.getBeersPerPage(_page);
  }
}

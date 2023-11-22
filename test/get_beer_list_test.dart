import 'package:flutter_beer_app/core/dto/api_dto/api_dto_exports.dart';
import 'package:flutter_beer_app/features/data/repository/beer_repository_implements.dart';
import 'package:flutter_beer_app/features/domain/usecases/get_beers_per_page_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get beer list', () async {
    final usecase = GetBeersPerPageUseCase(
      beerRepository: BeerRepositoryImplements(),
    );
    final DataState state = await usecase.call(params: 1);
    final beerList = state.data;
    expect(beerList, isNotEmpty);
  });
}

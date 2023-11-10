import 'package:dio/dio.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

abstract class RemoteBeersState {
  const RemoteBeersState();
}

class RemoteBeersLoading extends RemoteBeersState {
  const RemoteBeersLoading();
}

class RemoteBeersDone extends RemoteBeersState {
  final int page;
  final List<BeerEntity>? beers;
  const RemoteBeersDone({
    required this.beers,
    required this.page,
  });
}

class RemoteBeersPaginating extends RemoteBeersState {
  final int page;
  final List<BeerEntity>? beers;
  const RemoteBeersPaginating({
    required this.beers,
    required this.page,
  });
}

class RemoteBeersError extends RemoteBeersState {
  final DioException? error;
  const RemoteBeersError(this.error);
}

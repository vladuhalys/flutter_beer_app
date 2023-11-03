import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

abstract class RemoteBeersState extends Equatable {
  final List<BeerEntity>? beers;
  final DioException? error;

  const RemoteBeersState({this.beers, this.error});

  @override
  List<Object> get props => [beers!, error!];
}

class RemoteBeersLoading extends RemoteBeersState {
  const RemoteBeersLoading();
}

class RemoteBeersDone extends RemoteBeersState {
  const RemoteBeersDone(List<BeerEntity> beers) : super(beers: beers);
}

class RemoteBeersError extends RemoteBeersState {
  const RemoteBeersError(DioException error) : super(error: error);
}

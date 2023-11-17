import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/features/domain/usecases/get_beers_per_page_usecase.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_event.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_state.dart';

class RemoteBeersBloc extends Bloc<RemoteBeersEvent, RemoteBeersState> {
  final GetBeersPerPageUseCase _getBeersPerPageUseCase;
  late ScrollController sc;

  RemoteBeersBloc(this._getBeersPerPageUseCase)
      : super(const RemoteBeersLoading()) {
    sc = ScrollController();
    sc.addListener(() {
      final double paginationExtent = sc.position.maxScrollExtent - 50;
      final maxExtent = paginationExtent < 0 ? 0 : paginationExtent;
      if (sc.position.pixels > maxExtent) {
        add(PaginateBeers());
      }
    });
    on<GetBeersInit>(onGetBeers);
    on<PaginateBeers>(
      onPaginateBeers,
      transformer: sequential(),
    );
  }

  @override
  Future<void> close() {
    sc.dispose();
    return super.close();
  }

  void onGetBeers(
      RemoteBeersEvent event, Emitter<RemoteBeersState> emit) async {
    emit(const RemoteBeersLoading());
    final DataState<List<BeerEntity>> dataState =
        await _getBeersPerPageUseCase.call(params: 1);
    if (dataState is DataSuccess && dataState.data != null) {
      emit(RemoteBeersDone(beers: dataState.data!, page: 1));
    }
    if (dataState is DataFailed) {
      emit(RemoteBeersError(dataState.error!));
    }
  }

  void onPaginateBeers(
      PaginateBeers event, Emitter<RemoteBeersState> emit) async {
    if (state is RemoteBeersDone) {
      final loaded = state as RemoteBeersDone;
      emit(RemoteBeersPaginating(beers: loaded.beers, page: loaded.page));
      final DataState<List<BeerEntity>> dataState =
          await _getBeersPerPageUseCase.call(params: loaded.page + 1);
      await Future.delayed(const Duration(seconds: 1));
      if (dataState is DataSuccess && dataState.data != null) {
        final List<BeerEntity> beers = loaded.beers!;
        beers.addAll(dataState.data!);
        emit(RemoteBeersDone(beers: beers, page: loaded.page + 1));
      }
      if (dataState is DataFailed) {
        emit(RemoteBeersError(dataState.error!));
      }
    }
  }
}

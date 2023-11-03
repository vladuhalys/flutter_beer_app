import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_beer_app/core/error/dio_error.dart';
import 'package:flutter_beer_app/features/domain/usecases/usecases.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_event.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_state.dart';

class RemoteBeersBloc extends Bloc<RemoteBeersEvent, RemoteBeersState> {
  final GetBeersPerPageUseCase _getBeersPerPageUseCase;

  RemoteBeersBloc(this._getBeersPerPageUseCase)
      : super(const RemoteBeersLoading()) {
    on<GetBeers>(onGetBeers);
  }

  void onGetBeers(GetBeers event, Emitter<RemoteBeersState> emit) async {
    final DataState<List<BeerEntity>> dataState =
        await _getBeersPerPageUseCase.call(params: event.page);
    if (dataState is DataSuccess && dataState.data != null) {
      emit(RemoteBeersDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteBeersError(dataState.error!));
    }
  }
}

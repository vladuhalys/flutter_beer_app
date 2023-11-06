import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/data/repository/beer_repository_implements.dart';
import 'package:flutter_beer_app/features/domain/usecases/usecases.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_block.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_event.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_state.dart';
import 'package:flutter_beer_app/features/presentation/widgets/beer_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RemoteBeersBloc(
            GetBeersPerPageUseCase(beerRepository: BeerRepositoryImplements()))
          ..add(GetBeers(1)),
        child: BlocBuilder<RemoteBeersBloc, RemoteBeersState>(
          builder: (context, state) {
            if (state is RemoteBeersError) {
              return const Center(child: Icon(Icons.refresh));
            }
            if (state is RemoteBeersDone) {
              return ListView.builder(
                controller: context.read<RemoteBeersBloc>().sc,
                itemBuilder: (context, index) {
                  return BeerWidget(
                      beer: context.read<RemoteBeersBloc>().beers![index],
                      onBeerPressed: null);
                },
                itemCount: context.read<RemoteBeersBloc>().beers?.length,
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_bloc.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_event.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_state.dart';
import 'package:flutter_beer_app/features/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_beer_app/features/presentation/widgets/beer_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Beer App'),
            actions: [
              context.read<UserBloc>().state.map(
                    loading: (_) => const Offstage(),
                    loaded: (state) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(state.user.photoUrl),
                        ),
                      );
                    },
                    error: (_) => const Offstage(),
                  )
            ],
          ),
          body: BlocBuilder<RemoteBeersBloc, RemoteBeersState>(
            builder: (context, state) {
              if (state is RemoteBeersLoading) {
                return Center(child: Lottie.asset('assets/loading.json'));
              }
              if (state is RemoteBeersError) {
                return Center(
                  child: GestureDetector(
                    child: const Icon(Icons.refresh),
                    onTap: () {
                      context.read<RemoteBeersBloc>().add(GetBeersInit());
                    },
                  ),
                );
              }
              if (state is RemoteBeersDone) {
                return ListView.builder(
                  controller: context.read<RemoteBeersBloc>().sc,
                  itemBuilder: (context, index) {
                    return BeerWidget(
                        beer: state.beers![index], onBeerPressed: null);
                  },
                  itemCount: state.beers!.length,
                );
              }
              if (state is RemoteBeersPaginating) {
                return ListView.builder(
                  controller: context.read<RemoteBeersBloc>().sc,
                  itemBuilder: (context, index) {
                    if (index == state.beers!.length) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Lottie.asset('assets/cir_load.json',
                            width: 150, height: 150),
                      );
                    }
                    return BeerWidget(
                        beer: state.beers![index], onBeerPressed: null);
                  },
                  itemCount: state.beers!.length + 1,
                );
              }
              return const SizedBox();
            },
          ),
        );
      },
    );
  }
}

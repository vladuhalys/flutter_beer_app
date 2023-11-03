import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_block.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_state.dart';
import 'package:flutter_beer_app/features/presentation/widgets/beer_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RemoteBeersBloc, RemoteBeersState>(
        builder: (_, state) {
          if (state is RemoteBeersLoading) {
            return const Center(child: CupertinoActivityIndicator());
          }
          if (state is RemoteBeersError) {
            return const Center(child: Icon(Icons.refresh));
          }
          if (state is RemoteBeersDone) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return BeerWidget(
                    beer: state.beers![index], onBeerPressed: null);
              },
              itemCount: state.beers?.length,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}

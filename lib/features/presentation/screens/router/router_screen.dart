import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/data/repository/beer_repository_implements.dart';
import 'package:flutter_beer_app/features/data/repository/user_repository_impliments.dart';
import 'package:flutter_beer_app/features/domain/usecases/get_beers_per_page_usecase.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_bloc.dart';
import 'package:flutter_beer_app/features/presentation/bloc/beer/remote/remote_beer_event.dart';
import 'package:flutter_beer_app/features/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_beer_app/features/presentation/screens/home/home.dart';
import 'package:flutter_beer_app/features/presentation/screens/sign_in_up/sign_in_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterScreen extends StatelessWidget {
  const RouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(UserRepositoryImplements())
            ..add(const UserEvent.getInfo()),
        ),
        BlocProvider(
          create: (context) => RemoteBeersBloc(GetBeersPerPageUseCase(
              beerRepository: BeerRepositoryImplements()))
            ..add(GetBeersInit()),
        ),
      ],
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const Offstage(),
            loaded: (state) {
              if (state.user.email.isEmpty) {
                return const SignInUpScreen();
              }
              return const HomeScreen();
            },
            error: (_) => const SignInUpScreen(),
          );
        },
      ),
    );
  }
}

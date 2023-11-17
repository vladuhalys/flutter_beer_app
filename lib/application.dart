import 'package:flutter/material.dart';
import 'package:flutter_beer_app/core/router/router.dart';
import 'package:flutter_beer_app/features/presentation/screens/home/home.dart';
import 'package:flutter_beer_app/features/presentation/screens/sign_in_up/sign_in_up_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Beer App',
      themeMode: ThemeMode.dark,
      darkTheme:
          ThemeData(primarySwatch: Colors.grey, primaryColor: Colors.black),
      initialRoute: Routs.initRoute,
      routes: {
        Routs.home: (context) => const HomeScreen(),
        Routs.signIn: (context) => const SignInUpScreen(),
      },
    );
  }
}

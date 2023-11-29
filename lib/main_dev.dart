import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beer_app/application.dart';
import 'package:flutter_beer_app/core/router/router.dart';
import 'package:flutter_beer_app/firebase_options.dart';

Future<void> main() async {
  Routs.setInitRoute(Routs.router);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Application());
}

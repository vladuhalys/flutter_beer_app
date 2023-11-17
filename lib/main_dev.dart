import 'package:flutter/material.dart';
import 'package:flutter_beer_app/application.dart';
import 'package:flutter_beer_app/core/router/router.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  Routs.setInitRoute(Routs.signIn);
  // await Supabase.initialize(
  //   url: 'https://xyzcompany.supabase.co',
  //   anonKey: 'public-anon-key',
  // );
  runApp(const Application());
}

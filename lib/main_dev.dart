import 'package:flutter/material.dart';
import 'package:flutter_beer_app/application.dart';
import 'package:flutter_beer_app/core/router/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  Routs.setInitRoute(Routs.signIn);
  await Supabase.initialize(
    url: "https://fvtnpeozvnbxdtkdznkd.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ2dG5wZW96dm5ieGR0a2R6bmtkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxMzM1NjYsImV4cCI6MjAxNTcwOTU2Nn0.1UT16ld5iT8cNw3ed6XqDmxTlIgDTOgd3BV_DDNAd2g",
  );
  runApp(const Application());
}

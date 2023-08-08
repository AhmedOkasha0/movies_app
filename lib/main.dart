

import 'package:flutter/material.dart';
import 'package:movies_app/core/services/server_locator.dart';
import 'package:movies_app/movies/presentation/screens/movie_screen.dart';

void main() {
  ServicesLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MovieScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

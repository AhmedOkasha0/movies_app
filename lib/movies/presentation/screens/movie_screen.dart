import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movies/presentation/bloc/movies_bloc_bloc.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (
        context,
      ) =>
          MovieBloc()..add(GetNowPlayingMoviesEvent()),
      lazy: false,
      child: SafeArea(child: BlocBuilder<MovieBloc, MoviesBlocState>(
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [],
            ),
          );
        },
      )),
    );
  }
}

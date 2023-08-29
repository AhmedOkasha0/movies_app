import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie_detalis.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_detalis.dart';

part 'movie_detalis_event.dart';
part 'movie_detalis_state.dart';

class MovieDetalisBloc extends Bloc<MovieDetalisEvent, MovieDetalisState> {
  MovieDetalisBloc(
    this.getMovieDetalis,
  ) : super(const MovieDetalisState()) {
    on<GetMovieDetalisEvent>(_getMovieDetalis);
  }
  final GetMovieDetalis getMovieDetalis;

  FutureOr<void> _getMovieDetalis(
      GetMovieDetalisEvent event, Emitter<MovieDetalisState> emit) async {
    final result =
        await getMovieDetalis(MovieDetalisParameter(movieId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
            requestState: RequestState.error, message: l.message)),
        (r) => emit(state.copyWith(
            movieDetalis: r, requestState: RequestState.loaded)));
  }
}

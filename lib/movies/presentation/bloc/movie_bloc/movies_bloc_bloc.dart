import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/base_usecase/base_usecase.dart';

import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies.dart';

part 'movies_bloc_event.dart';
part 'movies_bloc_state.dart';

class MovieBloc extends Bloc<MoviesBlocEvent, MoviesBlocState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMovies;
  final GetPopularMoviesUseCase getPopularMovies;
  final GetTopRatedMoviesUseCase getTopRatedMovies;
  MovieBloc(
    this.getNowPlayingMovies,
    this.getPopularMovies,
    this.getTopRatedMovies,
  ) : super(const MoviesBlocState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMovies(const NoParameter());
      emit(const MoviesBlocState(nowPlayingState: RequestState.loaded));
      result.fold(
          (l) => emit(state.copyWith(
              nowPlayingState: RequestState.error,
              nowPlayingMessage: l.message)),
          (r) => emit(state.copyWith(
              nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
    });
    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMovies(const NoParameter());
      result.fold(
        (l) => emit(state.copyWith(
            popularState: RequestState.error, popularMesaage: l.message)),
        (r) => emit(state.copyWith(
            popularMovies: r, popularState: RequestState.loaded)),
      );
    });

    on<GetTopRatedMoviesEvent>((event, emit) async {
      final result = await getTopRatedMovies(const NoParameter());
      result.fold(
          (l) => emit(state.copyWith(
              topratedState: RequestState.error, topRatedMessage: l.message)),
          (r) => emit(state.copyWith(
              topRatedMovies: r, topratedState: RequestState.loaded)));
    });
  }
}

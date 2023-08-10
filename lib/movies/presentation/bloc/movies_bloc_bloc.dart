import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/usecases/get_now_playing_movies.dart';

part 'movies_bloc_event.dart';
part 'movies_bloc_state.dart';

class MovieBloc extends Bloc<MoviesBlocEvent, MoviesBlocState> {
  final GetNowPlayingMovies getNowPlayingMovies;
  MovieBloc(
    this.getNowPlayingMovies,
  ) : super(const MoviesBlocState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMovies.execute();
      emit(const MoviesBlocState(nowPlayingState: RequestState.loaded));
      result.fold(
          (l) => emit(MoviesBlocState(nowPlayingMessage: l.message)),
          (r) => emit(MoviesBlocState(
              nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
    });
  }
}

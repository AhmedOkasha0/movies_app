import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/data/data_sourses/movie_remot_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository_impl.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';
import 'package:movies_app/movies/domin/usecases/get_now_playing_movies.dart';

part 'movies_bloc_event.dart';
part 'movies_bloc_state.dart';

class MovieBloc extends Bloc<MoviesBlocEvent, MoviesBlocState> {
  MovieBloc() : super(const MoviesBlocState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      BaseMovieRemoteDataSource baseMovieRemoteDataSource =
          MovieRemoteDataSource();
      BaseMoviesRepository baseMoviesRepository =
          MoviesRepositoryImpl(baseMovieRemoteDataSource);
      final result =
          await GetNowPlayingMovies(moviesRepository: baseMoviesRepository)
              .execute();
    });
  }
}

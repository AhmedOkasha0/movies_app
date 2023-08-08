import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/data_sourses/movie_remot_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository_impl.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';
import 'package:movies_app/movies/domin/usecases/get_now_playing_movies.dart';
import 'package:movies_app/movies/domin/usecases/get_popular_movies.dart';
import 'package:movies_app/movies/domin/usecases/get_top_rated_movies.dart';

GetIt sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    // repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepositoryImpl(sl()));

    // now playing usecase
    sl.registerLazySingleton(() => GetNowPlayingMovies(sl()));
    sl.registerLazySingleton(() => GetPopularMovies(sl()));
    sl.registerLazySingleton(() => GetTopRatedMovies(sl()));
  }
}

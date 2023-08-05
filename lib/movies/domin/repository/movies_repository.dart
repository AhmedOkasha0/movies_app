import 'package:movies_app/movies/domin/entities/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowMovies();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRatedMovies();
}

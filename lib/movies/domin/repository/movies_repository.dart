import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failuer, List<Movie>>> getNowMovies();
  Future<Either<Failuer, List<Movie>>> getPopularMovies();
  Future<Either<Failuer, List<Movie>>> getTopRatedMovies();
}

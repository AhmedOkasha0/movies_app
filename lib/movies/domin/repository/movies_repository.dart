import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/entities/movie_detalis.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failuer, List<Movie>>> getNowMovies();
  Future<Either<Failuer, List<Movie>>> getPopularMovies();
  Future<Either<Failuer, List<Movie>>> getTopRatedMovies();
  Future<Either<Failuer, List<MovieDetalis>>> getMovieDetalis();
}

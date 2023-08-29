import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/entities/movie_detalis.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_detalis.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failuer, List<Movie>>> getNowMovies();
  Future<Either<Failuer, List<Movie>>> getPopularMovies();
  Future<Either<Failuer, List<Movie>>> getTopRatedMovies();
  Future<Either<Failuer, MovieDetalis>> getMovieDetalis(
      MovieDetalisParameter parameter);
}

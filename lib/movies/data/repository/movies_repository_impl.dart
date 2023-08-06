import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/data/data_sourses/movie_remot_data_source.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class MoviesRepositoryImpl extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepositoryImpl(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failuer, List<Movie>>> getNowMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return left(SereverFailuer(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failuer, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return left(SereverFailuer(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failuer, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return left(SereverFailuer(failure.errorMessageModel.statusMessage));
    }
  }
}

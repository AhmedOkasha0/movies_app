import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class GetTopRatedMovies {
  final BaseMoviesRepository moviesRepository;
  GetTopRatedMovies(this.moviesRepository);

  Future<Either<Failuer, List<Movie>>> execute() async {
    return moviesRepository.getTopRatedMovies();
  }
}

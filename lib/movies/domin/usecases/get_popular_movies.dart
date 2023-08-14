import 'package:dartz/dartz.dart';
import 'package:movies_app/core/base_usecase/base_usecase.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase {
  final BaseMoviesRepository moviesRepository;
  GetPopularMoviesUseCase(this.moviesRepository);
  @override
  Future<Either<Failuer, List<Movie>>> call() async {
    return moviesRepository.getPopularMovies();
  }
}

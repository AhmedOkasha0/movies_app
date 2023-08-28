import 'package:dartz/dartz.dart';
import 'package:movies_app/core/base_usecase/base_usecase.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase<List<Movie>, NoParameter> {
  final BaseMoviesRepository moviesRepository;
  GetTopRatedMoviesUseCase(this.moviesRepository);
  @override
  Future<Either<Failuer, List<Movie>>> call(NoParameter parameter) async {
    return await moviesRepository.getTopRatedMovies();
  }
}

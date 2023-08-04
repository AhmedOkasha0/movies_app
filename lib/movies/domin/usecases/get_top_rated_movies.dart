import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class GetTopRatedMovies {
  final MoviesRepository moviesRepository;
  GetTopRatedMovies({required this.moviesRepository});

  Future<List<Movie>> execute() async {
    return moviesRepository.getNowMovies();
  }
}

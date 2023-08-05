import 'package:movies_app/movies/domin/entities/movie.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class GetPopularMovies {
  final MoviesRepository moviesRepository;
  GetPopularMovies({required this.moviesRepository});

  Future<List<Movie>> execute() async {
    return moviesRepository.getPopularMovies();
  }
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/base_usecase/base_usecase.dart';
import 'package:movies_app/core/failuer/failuer.dart';
import 'package:movies_app/movies/domin/entities/movie_detalis.dart';
import 'package:movies_app/movies/domin/repository/movies_repository.dart';

class GetMovieDetalis
    extends BaseUseCase<List<MovieDetalis>, MovieDetalisParameter> {
  final BaseMoviesRepository moviesRepository;

  GetMovieDetalis(this.moviesRepository);
  @override
  Future<Either<Failuer, List<MovieDetalis>>> call(
      MovieDetalisParameter parameter) async {
    return await moviesRepository.getMovieDetalis();
  }
}

class MovieDetalisParameter extends Equatable {
  final int movieId;

  const MovieDetalisParameter({required this.movieId});

  @override
  List<Object?> get props => [movieId];
}

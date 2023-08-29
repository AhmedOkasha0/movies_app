part of 'movie_detalis_bloc.dart';

class MovieDetalisEvent extends Equatable {
  const MovieDetalisEvent();

  @override
  List<Object> get props => [];
}

class GetMovieDetalisEvent extends MovieDetalisEvent {
  final int id;

  const GetMovieDetalisEvent(this.id);

  @override
  List<Object> get props => [id];
}

class GetMovieRecommendationEvent extends MovieDetalisEvent {
  final int id;

  const GetMovieRecommendationEvent(this.id);

  @override
  List<Object> get props => [id];
}

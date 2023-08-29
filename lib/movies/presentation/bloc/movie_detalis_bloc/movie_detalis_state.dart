part of 'movie_detalis_bloc.dart';

class MovieDetalisState extends Equatable {
  const MovieDetalisState({
    this.movieDetalis,
    this.requestState = RequestState.loading,
    this.message = "",
  });
  final MovieDetalis? movieDetalis;
  final RequestState requestState;
  final String message;

  MovieDetalisState copyWith({
    MovieDetalis? movieDetalis,
    RequestState? requestState,
    String? message,
  }) {
    return MovieDetalisState(
        message: message ?? this.message,
        movieDetalis: movieDetalis ?? this.movieDetalis,
        requestState: requestState ?? this.requestState);
  }

  @override
  List<Object> get props => [message, requestState, movieDetalis ?? ""];
}

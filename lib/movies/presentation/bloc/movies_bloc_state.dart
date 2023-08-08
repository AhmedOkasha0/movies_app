part of 'movies_bloc_bloc.dart';

class MoviesBlocState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final String nowPlayingMessage;
  final RequestState nowPlayingState;

  const MoviesBlocState({
    this.nowPlayingMovies = const [],
    this.nowPlayingMessage = '',
    this.nowPlayingState = RequestState.loading,
  });

  @override
  List<Object> get props =>
      [nowPlayingMovies, nowPlayingMessage, nowPlayingState];
}

class MoviesBlocInitial extends MoviesBlocState {}



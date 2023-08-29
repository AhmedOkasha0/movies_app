part of 'movies_bloc_bloc.dart';

class MoviesBlocState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final String nowPlayingMessage;
  final RequestState nowPlayingState;

  final List<Movie> popularMovies;
  final String popularMesaage;
  final RequestState popularState;

  final List<Movie> topRatedMovies;
  final String topRatedMessage;
  final RequestState topratedState;

  MoviesBlocState copyWith({
    List<Movie>? nowPlayingMovies,
    String? nowPlayingMessage,
    RequestState? nowPlayingState,
    List<Movie>? popularMovies,
    String? popularMesaage,
    RequestState? popularState,
    List<Movie>? topRatedMovies,
    String? topRatedMessage,
    RequestState? topratedState,
  }) {
    return MoviesBlocState(
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        popularMesaage: popularMesaage ?? this.popularMesaage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularState: popularState ?? this.popularState,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topratedState: topratedState ?? this.topratedState);
  }

  const MoviesBlocState({
    this.popularMesaage = '',
    this.popularState = RequestState.loading,
    this.popularMovies = const [],
    this.nowPlayingMovies = const [],
    this.nowPlayingMessage = '',
    this.nowPlayingState = RequestState.loading,
    this.topRatedMessage = '',
    this.topratedState = RequestState.loading,
    this.topRatedMovies = const [],
  });

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingMessage,
        nowPlayingState,
        popularMesaage,
        popularMovies,
        popularState,
        topRatedMessage,
        topRatedMovies,
        topratedState,
      ];
}

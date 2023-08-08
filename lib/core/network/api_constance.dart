class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static const String apiKey = 'api_key=3f0feda1306a4d38e9cfc9586b1e7055';
  static const String nowPlayingMoviesPath = 'movie/now_playing?';
  static const String nowPlayingEndpoint =
      '$baseUrl$nowPlayingMoviesPath$apiKey';

  static const String topRatedMoviesPath = 'top_rated?';
  static const String topRatedMoviesEndpoint =
      '$baseUrl$topRatedMoviesPath$apiKey';
}

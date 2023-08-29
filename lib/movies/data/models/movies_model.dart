import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesModel extends Movie {
  const MoviesModel(
      {required super.backdropPath,
      required super.releaseDate,
      required super.id,
      required super.overview,
      required super.title,
      required super.voteAverage,
      required super.genreIds});
  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        backdropPath: json['backdrop_path'],
        id: json['id'],
        releaseDate: json['release_date'],
        overview: json['overview'],
        title: json['title'],
        voteAverage: json['vote_average'].toDouble(),
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      );
}

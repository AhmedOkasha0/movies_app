import 'package:movies_app/movies/domin/entities/movie.dart';

class MoviesModel extends Movie {
  const MoviesModel(
      {required super.backdropPath,
      required super.id,
      required super.originalTitle,
      required super.overview,
      required super.title,
      required super.voteAverage,
      required super.genreIds});
  factory MoviesModel.fromjson(Map<String, dynamic> json) => MoviesModel(
        backdropPath: json['backdrop_path'],
        id: json['id'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        title: json['title'],
        voteAverage: json['vote_average'],
        genreIds: List<int>.from(json['generaIds'].map((e) => e)),
      );
}

import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_detalis.dart';

class MovieDetalisModel extends MovieDetalis {
  const MovieDetalisModel({
    required super.backdropPath,
    required super.id,
    required super.overView,
    required super.relaseDate,
    required super.title,
    required super.voteAvergae,
    required super.runTime,
    required super.genres,
  });

  factory MovieDetalisModel.fromJson(Map<String, dynamic> json) =>
      MovieDetalisModel(
        backdropPath: json["backdrop_path"],
        id: json["id"],
        overView: json["overview"],
        relaseDate: json["release_date"],
        title: json["title"],
        voteAvergae: json["vote_average"],
        runTime: json["runtime"],
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromJson(x))),
      );
}

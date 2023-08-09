import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String backdropPath;
  final int id;
  final String overview;
  final String title;
  final double voteAverage;
  final List genreIds;
  final String releaseDate;

  const Movie(
      {required this.backdropPath,
      required this.id,
      required this.overview,
      required this.title,
      required this.voteAverage,
      required this.genreIds,
      required this.releaseDate});
  @override
  List<Object?> get props => [
        id,
        releaseDate,
        overview,
        title,
        voteAverage,
        genreIds,
        backdropPath,
      ];
}

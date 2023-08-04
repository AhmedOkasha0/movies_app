import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String backdropPath;
  final int id;
  final String overview;
  final String title;
  final double voteAverage;
  final List genreIds;
  final String originalTitle;

  const Movie({
    required this.backdropPath,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.genreIds,
  });
  @override
  List<Object?> get props => [
        id,
        originalTitle,
        overview,
        title,
        voteAverage,
        genreIds,
        backdropPath,
      ];
}

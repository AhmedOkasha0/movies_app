import 'package:equatable/equatable.dart';

class MovieDetalis extends Equatable {
  final String backdropPath;
  final int id;
  final String overView;
  final String relaseDate;
  final String title;
  final double voteAvergae;
  final int runTime;
  final List genres;

  const MovieDetalis({
    required this.backdropPath,
    required this.id,
    required this.overView,
    required this.relaseDate,
    required this.title,
    required this.voteAvergae,
    required this.runTime,
    required this.genres,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        id,
        overView,
        relaseDate,
        title,
        voteAvergae,
        runTime,
        genres
      ];
}

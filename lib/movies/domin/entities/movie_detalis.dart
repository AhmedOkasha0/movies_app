import 'package:equatable/equatable.dart';

class MovieDetalis extends Equatable {
  final String backdropPath;
  final int id;
  final String overView;
  final String relaseDate;
  final String title;
  final double voteAvergae;
  final int runTime;

  const MovieDetalis(
    this.backdropPath,
    this.id,
    this.overView,
    this.relaseDate,
    this.title,
    this.voteAvergae,
    this.runTime,
  );

  @override
  List<Object?> get props => [
    backdropPath,
    id,
    overView,
    relaseDate,
    title,
    voteAvergae,
    runTime




  ];
}

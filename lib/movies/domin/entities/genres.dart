import 'package:equatable/equatable.dart';

class Genres extends Equatable {
  final String name;
  final String id;

  const Genres({required this.name, required this.id});
  @override
  List<Object?> get props => [name, id];
}

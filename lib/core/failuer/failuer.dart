import 'package:equatable/equatable.dart';

abstract class Failuer extends Equatable {
  final String message;

  const Failuer(this.message);
  @override
  List<Object> get props => [message];
}

class SereverFailuer extends Failuer {
  const SereverFailuer(super.message);
}

class DataBaseFailuer extends Failuer {
  const DataBaseFailuer(super.message);
}

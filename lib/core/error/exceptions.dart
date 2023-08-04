import 'package:movies_app/core/network/error_message_model.dart';

class ServerExeption implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerExeption({required this.errorMessageModel});
}

class LocalDataBaseException {
  final String message;

  const LocalDataBaseException({required this.message});
}

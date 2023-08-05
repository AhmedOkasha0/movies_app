import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/network/api_constance.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/movies/data/models/movies_model.dart';

abstract class BaseMovieRemoteDataSource {
  // this contract abstract class repository
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingEndpoint);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingEndpoint);
    if (response.data == 200) {
      return response.data;
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstance.topRatedMoviesEndpoint);
    if (response.data == 200) {
      return response.data;
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }
}

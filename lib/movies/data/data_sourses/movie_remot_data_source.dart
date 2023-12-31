import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/network/api_constance.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/movies/data/models/movie_detalis.dart';
import 'package:movies_app/movies/data/models/movies_model.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_detalis.dart';

abstract class BaseMovieRemoteDataSource {
  // this contract abstract class repository
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
  Future<MovieDetalisModel> getMovieDetalis(MovieDetalisParameter parameter);
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingEndpoint);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingEndpoint);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get(
        "https://api.themoviedb.org/3/movie/top_rated?api_key=3f0feda1306a4d38e9cfc9586b1e7055");
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetalisModel> getMovieDetalis(
      MovieDetalisParameter parameter) async {
    final response =
        await Dio().get(ApiConstance.movieDetalisPath(parameter.movieId));
    if (response.statusCode == 200) {
      return MovieDetalisModel.fromJson(response.data);
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}

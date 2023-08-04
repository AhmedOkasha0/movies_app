import 'package:dio/dio.dart';
import 'package:movies_app/core/utils/app_constant.dart';
import 'package:movies_app/movies/data/models/movies_model.dart';

class MovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConstant.baseUrl + AppConstant.apiKey);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return [];
    }
  }
}

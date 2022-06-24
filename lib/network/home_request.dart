

import '../model/movie_item_entity.dart';
import 'config.dart';
import 'http_request.dart';

class HomeRequest {
  static Future<List<MovieItemEntity>> requestMovieList(int start) async {
    // 1.构建URL
    final movieURL =
        "https://api.wmdb.tv/api/v1/top?type=Imdb&skip=0&limit=50&lang=Cn";
    // print("网址：$movieURL");
    // 2.发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    // final subjects = result["data"];

    // 3.将Map转成Model
    List<MovieItemEntity> movies = [];
    List<MovieItemData> movieData = [];

    for (var sub in result) {
      final movieItemEntity =MovieItemEntity.fromJson(sub);
      movies.add(movieItemEntity);
      final subjects = sub["data"];
      for (var data in subjects) {
        movieData.add(MovieItemData.fromJson(data));
        movieItemEntity.data = movieData;
      }
    }

    return movies;
  }


}

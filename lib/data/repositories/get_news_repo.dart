import 'package:dio/dio.dart';
import 'package:ewaa_newz_app/data/models/get_news_model.dart';

class GetNewsRepo {
  final dio = Dio();

  Future<GetNewsModel?> getNews() async {
    Response response;
    response = await dio.get(
        "https://newsapi.org/v2/everything?q=tesla&from=2024-02-25&sortBy=publishedAt&apiKey=7c07f0c86d484b30a5af1289c531cff1");

    if (response.statusCode == 200) {
      GetNewsModel myNews = GetNewsModel.fromJson(response.data);

      return myNews;
    } else {
      return null;
    }
  }
}

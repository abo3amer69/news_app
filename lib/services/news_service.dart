import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String Category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a9ba3b639ebe4bc1a2f20fcd23b9e5eb&category=$Category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];

      List<ArticleModel> articlelist = [];
      for (var article in articles) {
        ArticleModel articlemodel = ArticleModel.fromjson(article);

        articlelist.add(articlemodel);
      }
      return articlelist;
    } catch (e) {
      return [];
    }
  }
}

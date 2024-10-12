import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{
  final Dio dio;
  NewsService(this.dio);


  Future<List<ArticleModel>> getTopHeadlines({required String category})async{
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=f99845d2267d4d20870b3a5aadde2a30&category=$category&country=us');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel=ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }catch(e){
      return [];
    }
  }
}
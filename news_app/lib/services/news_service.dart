import 'dart:convert';

import 'package:news_app/model/articles.dart';
import 'package:http/http.dart' as http;

import '../model/news.dart';

class NewsService{

  Future<List<Articles>> fetchNews(String category, String language) async{
    String url = 'https://newsapi.org/v2/top-headlines?country=$language&category=$category&apiKey=8d0585d1780b40d0bd5a8c2951ce8f92';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    if(response.statusCode ==200){
      final result = json.decode(response.body);
      News news = News.fromJson(result);
      return news.articles ?? [];
    }
    throw Exception('Bad Request');
  }
}
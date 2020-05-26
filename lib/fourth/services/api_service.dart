import 'dart:convert';
import 'package:flutter_practice_website/fourth/models/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = 'api.nytimes.com';
  static final String API_KEY = 'pIqs56AsXPHFM7pjHHGORcsizWxggEhn';

  Future<List<Article>> fetchArticlesBySection(String section) async {
    Map<String, String> parameters = {
      'api-key': API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/svc/topstories/v2/$section.json',
      parameters
    );
    try {
      http.Response response = await http.get(uri);
      Map<String, dynamic> data = json.decode(response.body);
      List<Article> articles = [];
      data['results'].forEach(
        (articleMap) => articles.add(Article.fromMap(articleMap)),
      );
      return articles;
    } catch (err) {
      throw err.toString();
    }
  }
}
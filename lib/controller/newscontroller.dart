import 'package:myapp/model/newsmodel.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsController{

  static Future<News>  mynews() async {
    final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a80aad8a17dc46089a176be9c73e5724'));
    print(response.body);
    if (response.statusCode ==200){

      return News.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('error');
    }
  }
}

class Routes {

}
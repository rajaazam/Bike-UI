// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:myapp/model/home.dart';

// class HomePageController {

//   static Future<Home> fetchdata()  async{
//   final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
 
//  if (response.statusCode== 200) {
//    print(response.body);
//       // return Home.fromJson(jsonDecode(response.body));
//       return Home.fromJson(jsonDecode(response.body));
   
//  } else {
//    throw Exception('error');
//  }
// }
// }
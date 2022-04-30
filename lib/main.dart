import 'package:flutter/material.dart';
import 'package:myapp/pages/api.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/home_page_bike.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/mypage.dart';
import 'package:myapp/pages/registerpage.dart';
import 'package:myapp/pages/screenfive.dart';
import 'package:myapp/pages/screenfourpae.dart';
import 'package:myapp/screen/newspage.dart';
import 'package:myapp/view/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      textTheme: TextTheme(),
        primarySwatch: Colors.blue,
      ),
      home:HomePageBike()
      //NewsPage()
      //HomePage()
      //NewApiPage()
      //API()
      //HomePage()
   // RegisterPage()
      //MyHomePage(title: 'medai query')
    );
  }
}


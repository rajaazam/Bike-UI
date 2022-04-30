import 'package:flutter/material.dart';
import 'package:myapp/widget/mediaquery.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: displayWidth(context) * 0.06,
              child: Text(
                'Box width 25% of screen width and text size 3% of screen width',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.05),
              ),
            ),
            Container(
              color: Colors.green,
              width: displayWidth(context) * 0.5,
              child: Text(
                'Box width 50% of screen width and text size 6% of screen width',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.06),
              ),
            ),
            Container(
              color: Colors.blue,
              width: displayWidth(context),
              child: Text(
                'Box width equal to screen width and text size 10% of screen width',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
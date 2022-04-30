import 'package:flutter/material.dart';
import 'package:myapp/pages/screen_page2.dart';
import 'package:myapp/pages/screen_page3.dart';
import 'package:myapp/widget/mybuttom.dart';
class ScreenfourPage extends StatefulWidget {
  const ScreenfourPage({ Key? key }) : super(key: key);

  @override
  _ScreenfourPageState createState() => _ScreenfourPageState();
}

class _ScreenfourPageState extends State<ScreenfourPage> {
  late final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 4'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
               //color: Colors.red,
               //width: MediaQuery.of(context).size.width*10,
              // height: MediaQuery.of(context).size.height-2,
              // width: displayWidth(context) * 0.5,
              // height: displayHeight(context) -
              //     MediaQuery.of(context).padding.top -
              //     kToolbarHeight,
              child: Text(
                'Box width 50% of screen width and text size 6% of screen width and full screen height minus status bar height and AppBar height',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.06),
              ),
            ),
          ],
        ),
      ),
    );
      
      // Column(
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 200,
      //       child: MyButton(
      //         title: 'next',
      //         onTap: (){
      //           Navigator.pushReplacement(context, (MaterialPageRoute(builder: (_)=>ScreenPage2())));
      //         },
      //       ),
      //     ),
          
      //   ],
      // ),
      
   // );
  }

  displayWidth(BuildContext context) {}

  displayHeight(BuildContext context) {}
}
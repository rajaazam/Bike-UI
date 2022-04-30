import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/screenfourpae.dart';
import 'package:myapp/widget/mybuttom.dart';

class ScreenPage3 extends StatefulWidget {
  const ScreenPage3({Key? key}) : super(key: key);

  @override
  _ScreenPage3State createState() => _ScreenPage3State();
}

class _ScreenPage3State extends State<ScreenPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 100,
              child: MyButton(
                  title: 'next',
                  onTap: () {
                    Navigator.push(context,
                        (MaterialPageRoute(builder: (_) => ScreenfourPage())));
                    // Navigator.pushAndRemoveUntil(context, (MaterialPageRoute(builder: (context)=>HomePage())), (route) => false);
                    // Navigator.pop(context);
                    //  Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

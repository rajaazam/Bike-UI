import 'package:flutter/material.dart';
import 'package:myapp/pages/screen_page3.dart';
import 'package:myapp/widget/mybuttom.dart';
class ScreenPage2 extends StatefulWidget {
   final String firstname;
   final String lastname;
   final String phone;
  const ScreenPage2({ Key? key ,required this.firstname,required this.lastname,required this.phone}) : super(key: key);

  @override
  _ScreenPage2State createState() => _ScreenPage2State();
}

class _ScreenPage2State extends State<ScreenPage2> {
 

 
  
 
  @override
  Widget build(BuildContext context) {
    var firstname;
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2'),),
      body: Column(
        children: [
          // Container(
          //   height: 50,
          //   width: 200,
          //   child: TextField(
          //     //controller:myController1 ,
          //   ),
           
          //   //  MyButton(
          //   //   title: 'next',
          //   //   onTap: (){
          //   //     Navigator.push(context, (MaterialPageRoute(builder: (_)=>ScreenPage3())));
          //   //   },
          //   ),
          // TextField(
          //   controller: myController2,
          // ),
          // TextField(
          //   controller: myController3,
          // )
           //Text('Name: $firstname'),
          //  Text('Email: $lastname'),
           // Text('Phone: $phone'),
        ],
      ),
      
    );
  }
}
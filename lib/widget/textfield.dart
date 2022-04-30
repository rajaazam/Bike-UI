import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  final String hintText;
  const TextField({
    Key? key, required this.hintText, required InputDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
     // height: 300,
     // width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: this.hintText
        // helperText: 'First_Name'
        ), hintText: '',
      ),
    );
  }
}
import 'package:flutter/material.dart';
class NewMyField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLength;
 final TextInputType keyboardType;
 final Widget? icon;
 final  void Function()? onTap;
  const NewMyField({ Key? key, required this.controller,
  this.onTap,
   required this.hintText,
    this.keyboardType=TextInputType.text,
     this.maxLength, this.icon }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
       keyboardType: keyboardType,
      controller:controller,
      maxLength:maxLength,
      decoration: InputDecoration(
        hintText: hintText,
        icon: icon,
        
      ),
      
      
    );
  }
}
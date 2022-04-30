import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MyField extends StatelessWidget {
  final TextEditingController controller;
  final bool? autocorrect ;
  final TextInputType keyboardType;
 final List<TextInputFormatter>? inputFormatters;
 final String hintText;
 final icon ;
 //final int maxLength;
 final int? maxLength;
  const MyField({
  
     
    Key? key, required this.controller, 
     this.autocorrect=false, 
     this.keyboardType=TextInputType.text,
      this.inputFormatters, 
    required this.hintText, 
    this.maxLength,
     this.icon,
    
   // required this. TextEditingController 
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: autocorrect!,
      maxLength:maxLength,
      controller: controller,
      keyboardType: keyboardType,
    
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText:hintText,
        icon:icon,
         

        // helperText: 'First_Name'
      ),
    );
  }
}
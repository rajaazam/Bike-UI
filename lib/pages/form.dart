import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
   String firstname,lastname,phone ,email;
   WelcomePage({Key? key,required this.firstname,
   required this.lastname,
   required this.email,
  // required this.date,
   required this.phone}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form'),
      ),
    body: Center(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Firstname: $firstname'),
            Text('Lastname: $lastname'),
            Text('Phone: $phone'),
            Text('Email $email'),
           // Text('Date:$date'),
          ],
        ),
      ),
    ),
    );
  }
}
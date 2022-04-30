// import 'package:flutter/material.dart';
// import 'package:myapp/controller/homepagecontroller.dart';
// import 'package:myapp/model/home.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('api to get data'),
//       ),
//       body: Center(
//         child: FutureBuilder<Home>(
//             future: HomePageController.fetchdata(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Column(
//                   children: [
//                     Text('data'),
//                     Text(snapshot.data!.title!),
//                     Text(snapshot.data!.userId!.toString())
//                     // Text(snapshot.data!.id!.toString()),
//                     //Text('Title: ${snapshot.data!.title!}'),
//                     // Text('Id: ${snapshot.data!.id!}'),
                  
//                     ],
//                 );
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }
//               return const CircularProgressIndicator();
//             }),
//       ),
//     );
//   }
// }

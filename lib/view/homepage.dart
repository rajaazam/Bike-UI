// import 'package:flutter/material.dart';
// import 'package:myapp/model/newalbum_model.dart';
// import 'package:myapp/pages/api.dart';
// class NewApiPage extends StatefulWidget {
//   const NewApiPage({Key? key}) : super(key: key);

//   @override
//   _NewApiPageState createState() => _NewApiPageState();
// }

// class _NewApiPageState extends State<NewApiPage> {
//   late Future<Album> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Album>(
//             future: futureAlbum,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Column(
//                   children: [
//                     Text(snapshot.data!.title),
//                      Text(snapshot.data!.id.toString()),
//                   ],
//                 );
//               } else if (snapshot.hasError) {
//                 return Text('${snapshot.error}');
//               }

//               // By default, show a loading spinner.
//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
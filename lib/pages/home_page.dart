// import 'package:flutter/material.dart';
// import 'package:myapp/pages/screen_page2.dart';
// import 'package:myapp/widget/mybuttom.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     bool loader = true;
//     print('build');
//     Future.delayed(Duration(seconds:5),(){
//       print("Loader value======>>>> $loader");
//       setState(() {
//             loader=false;
//       });
    
//     });

//     super.initState();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Home page')),
//         leading:IconButton(onPressed: (){},icon: Icon(Icons.menu_sharp),
//         ),
//         actions: [
//           IconButton(onPressed: (){},icon: Icon(Icons.search),
//           ),
//           IconButton(onPressed: (){},icon: Icon(Icons.favorite_border_sharp),
//           ),
//           IconButton(onPressed: (){},icon: Icon(Icons.location_off),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
//             children: [
//               Container(
//                 height: 50,
//                 width: 200,
//                 // child: MyButton(
//                 //    title:
//                 //     'NextPage',
//                 //   onTap: () {
                   
//                 //     Navigator.push(context,
//                 //         (MaterialPageRoute(builder: (_) => ScreenPage2())));
//                 //     setState(() {
//                 //       print('object');
//                 //     }
//                 //     );
//                 //   },
//                 // ),
//               ),
//               SizedBox(height: 20,),
//               Container(
//                 height: 50,
//                 width: 200,
//                 child: MyButton(
//                   onTap: () {
//                     print('function click');
//                     setState(() {});
//                   },
//                   title: 'log in',
//                 ),
//               ),
//                 SizedBox(height: 20,),
//               Container(
//                 height: 50,
//                 width: 200,
//                 child: MyButton(
//                   onTap: () {},
//                   title: 'sign up',
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     print('Change able');
//     super.didChangeDependencies();
//   }
// }

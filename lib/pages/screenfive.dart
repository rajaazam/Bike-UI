import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/screen_page2.dart';
import 'package:myapp/pages/screenfourpae.dart';

// class ScreenFive extends StatefulWidget {
//   const ScreenFive({Key? key}) : super(key: key);

//   @override
//   ScreenFiveState createState() => ScreenFiveState();
// }

// class _ScreenFiveState extends State<ScreenFive> {
//   bool loader = true;
//   @override
//   void initState() {
//     print("Loader value======>>>> $loader");
//     Future.delayed(Duration(seconds: 5), () {
//       print("Loader value======>>>> $loader");
//       this.setState(() {
//         loader = false;
//       });
//     });

//     print("init State");
//     this.setState(() {});
//     //  print("initState");

//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     print("didChangeDependencies");
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home page'),
//         // leading: IconButton(onPressed: (){}, icon: Icons.menu_sharp);
//       ),
//       body: Column(
//         children: [
//           loader
//               ? CupertinoActivityIndicator()
//               : GestureDetector(
//                   onTap: () async {
//                     bool value = await Navigator.push(context,
//                         MaterialPageRoute(builder: (_) {
//                       return ScreenPage2();
//                     }));
//                     loader = value;
//                     Future.delayed(Duration(seconds: 5), () {
//                       loader = false;
//                       this.setState(() {});
//                     });
//                     this.setState(() {});
//                     @override
//   void didChangeDependencies() {
//     print("didChangeDependencies");
//     super.didChangeDependencies();
//   }
//                   },

//                   child: Container(
//                     child: Center(child: Text('wellcome to')),
//                   ),
//                 )
//         ],
//       ),
//     );
//   }

//   @override
//   void didUpdateWidget(covariant ScreenFive oldWidget) {
//     print("old widget");
//     // TODO: implement didUpdateWidget
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void dispose() {
//     print("home page");
//     super.dispose();
//   }
// }

class ScreenFivePage extends StatefulWidget {
  const ScreenFivePage({Key? key}) : super(key: key);

  @override
  _ScreenFivePageState createState() => _ScreenFivePageState();
}

class _ScreenFivePageState extends State<ScreenFivePage> {
  bool loader = true;
  @override
  void initState() {
    print("Loader value======>>>> $loader");
    Future.delayed(Duration(seconds: 5), () {
      print("Loader value======>>>> $loader");
      this.setState(() {
        loader = false;
      });
    });

    print("init State");
    this.setState(() {});
    //  print("initState");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        // leading: IconButton(onPressed: (){}, icon: Icons.menu_sharp);
      ),
      body: Center(
        child: Column(
          children: [
            loader
                ? CupertinoActivityIndicator()
                : GestureDetector(
                    onTap: () async {
                      bool value = await Navigator.push(context,
                          MaterialPageRoute(builder: (_) {
                        return ScreenfourPage();
                      }));
                      loader = value;
                      Future.delayed(Duration(seconds: 5), () {
                        loader = false;
                        this.setState(() {});
                      });
                      this.setState(() {});
                      @override
                      void didChangeDependencies() {
                        print("didChangeDependencies");
                        super.didChangeDependencies();
                      }
                    },
                    child: Container(
                      child: Center(child: Text('wellcome to five page')),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/controller/newscontroller.dart';
import 'package:myapp/model/newsmodel.dart';
class NewsPage extends StatefulWidget {
  const NewsPage({ Key? key }) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     title:Text('new dat'), 
    ),
    body: Center(
      child: FutureBuilder<News>(
        future: NewsController.mynews(),
        builder: (context,snapshot){
          if (snapshot.hasData) {
            return Column(
              children: [
                Text(snapshot.data!.status!),
                // Text(snapshot.data!.author!),
                //   Text(snapshot.data!.urlToImage!),
                //     Text(snapshot.data!.description!),
                //       Text(snapshot.data!.content!),
                //   Text(snapshot.data!.content!.toString()),
                //     Text(snapshot.data!.title!
              ],
            );
            
          } else if ( snapshot.hasError) 
          {
           print(snapshot.error);
          }
return const  CircularProgressIndicator();
        }),
    ),
    );
  }
}
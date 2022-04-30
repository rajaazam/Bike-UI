import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:myapp/pages/bike_details_page.dart';
import 'package:myapp/pages/mypage.dart';

class HomePageBike extends StatelessWidget {
  const HomePageBike({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bike'),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(padding: EdgeInsets.only(left: 16.0,top: 16.0,
           ),
           child: Text('Categories'),
           ),

           CategoryChooser(),
           SizedBox(height: 10.0,),
           Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
           
           child: Card(
             child: Container(height: 150,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20.0),
               color: Colors.indigo
             ),
             child:Swiper(
               itemCount: 2,
               itemBuilder: (context,index){
                 return Row(
                   children: [
                     SizedBox(width: 20.0,),
                     Expanded(child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Buy, Sell, Exchange',style: TextStyle(color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 20.0
                         ),),
                         Text('All in one place',style: TextStyle(color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 20.0
                         ),)
                       ],
                     )
                     ),
                     SizedBox(width: 10.0,),
                     CircleAvatar(
                       backgroundColor: Colors.indigo.shade800,
                       radius: 50.0,
                       child:Icon(FontAwesomeIcons.moneyBill,size: 30,)
                     )
                     
                   ],
                 );
               },
             )
             ),

           ),
           ),
      SizedBox(height: 16.0,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
      
       child: Row(
         children: [
           Text('Recent Post',style: Theme.of(context).textTheme.subtitle1,
           
          ),
          Spacer(),
          TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:
               (context)=>BikeDetailesPage()));
          }, child: Text('View All'))
         ],
       ),
      ),
      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
      
      child: Column(
        children: <Widget>[
          BikeListItem(
            onTap:()=> Navigator.push(context, 
            MaterialPageRoute(builder:
               (_)=>BikeDetailesPage(),
            )),
          ),
         
          BikeListItem(
            onTap:()=> Navigator.push(context, 
            MaterialPageRoute(builder:
               (_)=>BikeDetailesPage(),
            )),
            
          ),
          BikeListItem(
             onTap:()=> Navigator.push(context, 
            MaterialPageRoute(builder:
               (_)=>BikeDetailesPage(),
            )),
          ),
          BikeListItem(
            onTap:()=> Navigator.push(context, 
            MaterialPageRoute(builder:
               (_)=>BikeDetailesPage(),
            )),
          ),
        ],
      ),
      ),
      SizedBox(height: 20.0,)
          ],
        ),
      ),
    );
  }
}


// inmage
class CategoryChooser extends StatelessWidget {
  final Function(String)? onTap;
   CategoryChooser({ Key? key,
   this.onTap
    }) : super(key: key);
  final List<String> types= const[

    "Standard",
    'Cruiser',
    'Sport',
    'Dirt',
    'Scooter',
    'Electric'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,

vertical: 8.0        ),
        itemBuilder:(context, index){
        String type= types[index];
        return Column(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(image:
                 NetworkImage('https://m.media-amazon.com/images/I/617OW8TPOWL._SX355_.jpg',),
                
                ),
                color: Colors.white,
                shape: BoxShape.circle
              ),
              
              
            ),
            SizedBox(height: 5.0,
            ),
            Text(type,style: TextStyle(fontWeight: FontWeight.w500),)
          ],
        );
      } ,
       scrollDirection: Axis.horizontal,
       separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
        itemCount: types.length),
      
    );
  }
}

// bilke list item class

class BikeListItem extends StatelessWidget {
  final String? thirdTitle;
  final bool imageRight;
  final double elevation;
  final void Function()? onTap;
   BikeListItem({ Key? key,
   this.elevation=0.5,
   this.imageRight=false,
   this.onTap,
   this.thirdTitle

  
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final  String title= ' Bajaj Pursae 220F';
    return Card(
      elevation: elevation,
      child:  InkWell(borderRadius: BorderRadius.circular(4.0),
      onTap: onTap,
      child: Row(
        children: [
          _buildContiner(),
          Expanded(child: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,
                  ),
                  softWrap: true,
                  ),
                  ),
                  _buildTag(context)

              ],
              ),
              SizedBox(height: 5.0,),
              Text.rich(
                TextSpan(
                  children: [

                    TextSpan(
                      text: 'year 2021'
                    )
                  ]
                ),
                style: TextStyle(color: Colors.grey.shade700),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text('Condition'),
                  SizedBox(width: 10.0,),
                  Icon(Icons.star,color: Colors.yellow,),
                   Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    
                ],
              )

            ],
          ),

          ))

        ],
      ),
      
      ),
      
    );
  }


Container _buildContiner(){

  return Container(
    height: 120,
    width: 100,
    decoration: BoxDecoration(
      borderRadius: imageRight
      ? BorderRadius.only(
        topRight: Radius.circular(4.0),
        bottomLeft: Radius.circular(4.0)
      )
      :BorderRadius.only(
        topLeft: Radius.circular(4.0),
        bottomLeft: Radius.circular(4.0)
      ),
      image: DecorationImage(image:NetworkImage('https://m.media-amazon.com/images/I/617OW8TPOWL._SX355_.jpg'))

    ),
  );
}

//2

Container _buildTag(BuildContext context){
  return Container(padding: EdgeInsets.symmetric(vertical: 5.0,
  horizontal: 8.0),
  decoration: BoxDecoration( 
    borderRadius: BorderRadius.circular(20.0),
    color: Theme.of(context).primaryColor,
  ),
  child: Text('Rs. 45000',style: TextStyle(color:
   Colors.white,fontWeight: FontWeight.bold),),
  
  );
}
}
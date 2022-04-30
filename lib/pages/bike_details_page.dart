

import 'package:flutter/material.dart';

class BikeDetailesPage extends StatelessWidget {
 
  const BikeDetailesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final String title='bajaj  pulasart 22F';
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.red,
      title: Text(title),
      ),
      body: Stack(children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                        Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/I/617OW8TPOWL._SX355_.jpg'),fit: BoxFit.cover)                    ),
                    ),
                  

                  Positioned(
                    left: 20.0,
                    bottom: 10.0,
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                      ],
                    ),
                  ),
                  Positioned(
                    //top:8.0 ,
                    right: 10.0,
                    bottom: 5.0,
                    child: Chip(
                      backgroundColor: Colors.red,
                      elevation: 0,
                      labelStyle: TextStyle(fontWeight:
                       FontWeight.bold,
                       //color: Colors.red,
                      // backgroundColor: Colors.red
                       
                       ),
                      label: Text('Rs. 59000',style: TextStyle(color: Colors.white),),
                    )
                    ),
                    ],
                  ),
                   

                    Padding(padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Padding(padding: EdgeInsets.only(left: 6.0,bottom: 4.0),
                    child: Text('Key Spaces',
                    style: Theme.of(context).textTheme.subtitle2,
                    ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                      children: [
                        SpecBlock(
                          label: 'Engine',
                          value: '220cc',
                          icon: Icon(Icons.apps),
                        ),
                         SpecBlock(
                          label: 'Mileage',
                          value: '150 kmpl',
                          icon: Icon(Icons.apps),
                        ),
                         SpecBlock(
                          label: 'Break',
                          value: 'ABS',
                          icon: Icon(Icons.apps),
                        ),
                         SpecBlock(
                          label: 'Fuel Tank',
                          value: '12L',
                          icon: Icon(Icons.apps),
                        ),
                      ],
                    ),)
                      ],
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Padding(padding: EdgeInsets.only(left:6.0,bottom: 4.0),
                    child: Text('Free Gifts',
                    style: Theme.of(context).textTheme.subtitle2,
                    ),
                    
                    ),
                      SizedBox(height: 10.0,),
                    Padding(padding: EdgeInsets.only(left: 6.0,bottom: 4.0),
                    child: Text('helmet,Glove,Rain Coat,Bike Cover,',
                    style: Theme.of(context).textTheme.subtitle1,),),
                     SizedBox(height: 10.0,),
                    Padding(padding: EdgeInsets.only(left:6.0,bottom: 4.0),
                    child: Text('Specification',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    ),
                    BorderContiner(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        title: Text('Number (Lot)'),
                        trailing: Text('Bagmati 80',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ),
                      
                      ),
                       BorderContiner(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        title: Text('Manufactured Year'),
                        trailing: Text('220',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ),
                      
                      ),
                       BorderContiner(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        title: Text('Category '),
                        trailing: Text('Standard',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ),
                      
                      ),
                       BorderContiner(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        title: Text('Engine Serviced?'),
                        trailing: Text('Half',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ),
                      
                      ),
                       BorderContiner(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        title: Text('Ground Clearance'),
                        trailing: Text('150 mm',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ),
                      
                      ),
                       BorderContiner(
                      padding: EdgeInsets.all(0.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        title: Text('Seat height'),
                        trailing: Text('700 mm',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ),
                      
                      )
                ],
              ),
            ),



      ],),
      
    );
  }
}

///
class BorderContiner extends StatelessWidget {
  final String? title;
  final Widget? child;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double? elevation;
   BorderContiner({ Key? key,
  this.height,
  this.title,
  this.color,
  this.child,
  this.padding,
  this.margin,
  this.elevation=0.5,
  this.width=double.infinity,


  
  
  
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: color,
      margin: margin?? EdgeInsets.all(0),
      child: Container(

        padding: padding?? EdgeInsets.all(16.0),
        width: width,

        height: height,
        child: title==null
        ?child
        :Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!,style: TextStyle(fontWeight:
             FontWeight.bold,fontSize: 28.0),
             ),
             if(child!=null) ...[
               SizedBox(height: 1.0,),
               child!
             ]
          ],
        )
      ),

      
    );
  }
}





/// 
class SpecBlock extends StatelessWidget {

  final Widget? icon;
  final String? label;
  final String? value;
  const SpecBlock({ Key? key,
  this.icon,
  this.label,
  this.value, 
  
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(padding: EdgeInsets.all(8.0),
       child: Column(
         children: [
           if(icon !=null) icon!,
           SizedBox(height: 2.0,),
           Text(label!,style: TextStyle(color: Colors.grey.shade800),
           ),
           SizedBox(height: 5.0,),
           Text(value!,style: TextStyle(fontWeight: FontWeight.bold),)
           

         ],
       ),
      
      ),
      
    );
  }
}
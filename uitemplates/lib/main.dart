import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    
    (    
      // backgroundColor: Colors.red,
      body: ListView(    
        padding:const EdgeInsets.only(left: 15,top: 20), 
        children: 
        [   
             const SizedBox(height:50),
             const Text("Welcome to UI Templates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
             const SizedBox(height: 30),
             SizedBox(     
              height: 250,
              child:SingleChildScrollView(  
                 scrollDirection: Axis.horizontal,  
                child: Row(    
                  children: [  
                     Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                       child: GestureDetector(
                        onTap: () {print("output : Clicked");},
                         child: Container(
                           decoration:  BoxDecoration( 
                            borderRadius: BorderRadius.circular(8),   
                              image: const DecorationImage(    
                                fit:BoxFit.fill,
                                image:AssetImage('assets/online_education.jpg')
                              ),
                           color: Colors.blueGrey,
                          ),
                           height:200,
                           width: 150,
                           child: Column(   
                            mainAxisAlignment: MainAxisAlignment.end,  
                            children: 
                            [  
                              Container(     
                                height: 70,
                                decoration: BoxDecoration(
                                color:Colors.black.withOpacity(0.5),
                                borderRadius:const BorderRadius.vertical(bottom: Radius.circular(8))),
                                child: ListTile(title: Text('Online Education',style:TextStyle(color:Colors.white)))
                              )
                               
                            ],
                            ),
                         ),
                       ),
                     ),
                    Card(
                       child: Container(  
                      decoration:const BoxDecoration(    
                          image: DecorationImage(    
                            fit:BoxFit.fill,
                            image:AssetImage('assets/food_delivery.jpg')
                          ),
                       color: Colors.blueGrey,
                      ), 
                      height:200,
                      width: 150,
                       
                      child: Column(     
                        children: [     
                             
                        ],
                      ),
                    ),
                     ),
                    Card(
                       child: Container(   
                        height:200,
                        width: 150,
                      ),
                     )
                  ],
                )
              )
              
             ),

             ShadowText("Sucking Everyday",style: TextStyle(fontSize: 30),shadowColor: Colors.red,)
           


        ],
      ) 
       
    );
  }
}

class UIEntryCard extends StatelessWidget {
  const UIEntryCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


// Shadow Text 
class ShadowText extends StatelessWidget {
   const ShadowText(this.data,{this.style=const TextStyle(),this.thickness : 0.5, this.offset:const Offset(2,2),this.shadowColor: Colors.black, Key? key }) : super(key: key);

  final String data;
  final TextStyle style;
  final Color shadowColor;
  final double thickness;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(     
        children: 
        [     
          Positioned
          ( 
            top: offset.dy,
            left: offset.dx,
            child:Text(data,style: style.copyWith(color: shadowColor.withOpacity(thickness)),)
          ),
          BackdropFilter(     
            filter : ImageFilter.blur(sigmaX: 2.0,sigmaY: 2.0),
            child: Text(data,style:style)
          ),
          
        ],
      ),
    );
  }
}
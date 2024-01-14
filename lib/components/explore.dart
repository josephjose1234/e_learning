import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.maxFinite,
          padding:EdgeInsets.all(10),
          margin: EdgeInsets.all(1),
         
          child:Text('Explore',style:TextStyle(fontSize: 30,color:Colors.white))
        );
  }
}
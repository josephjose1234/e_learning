import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.maxFinite,
          padding:EdgeInsets.all(10),
          margin: EdgeInsets.all(1),
         
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Explore',style:TextStyle(fontSize: 30,color:Colors.white)),
              Text('More',style:TextStyle(fontSize: 20,color:Colors.blue))
            ],
          )
        );
  }
}
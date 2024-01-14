import 'package:e_learning/colors.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
 onTap:() {
            // Show the "Under Construction" dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Under Construction'),
                  content: Text('This feature is currently under construction. Please check back later.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },

      child: Container(
            width: double.maxFinite,
            padding:EdgeInsets.all(15),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.blue), borderRadius: BorderRadius.circular(25)),
            child:Text('Search...',style:TextStyle(color: Colors.blue))
          ),
    );
  }
}
import 'package:e_learning/colors.dart';
import 'package:e_learning/components/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your Courses', style: TextStyle(fontSize: 35,color: textColor)),
                    Icon(
                      Icons.search,
                      size: 40,
                    )
                  ],
                ),
              ),
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
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
                    height:50,
                    width:double.maxFinite,
                    margin:EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color:subBackgroundColor,
                      borderRadius: BorderRadius.circular(5)),
                    child:Center(child: Text('Course ${index}',style:TextStyle(color:Colors.white)),),),
                );
              }),
            )
              
            ],
          ),
           Positioned(
      bottom: 1,
      left: 0,
      right: 0,
      child:BottomBar() ),
        ],
      ),
    ));
  }
}

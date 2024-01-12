import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Progress',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
             
                ProgresCourseName(courseName: 'Course 1',),
            ProgresCourseName(courseName: 'Course 2',),
             ProgresCourseName(courseName: 'Course 3',),
              ProgresCourseName(courseName: 'Course 4',),
           
            ],)
            
          ],
        ));
  }
}

class ProgresCourseName extends StatelessWidget {
  const ProgresCourseName({
    required this.courseName
  });
final  String courseName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
      width:25,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.yellow),
      child:Center(child: Text(courseName))),
    );
  }
}


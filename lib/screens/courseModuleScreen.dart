import 'package:e_learning/colors.dart';
import 'package:flutter/material.dart';
//kooi
class CourseModule extends StatefulWidget {
  CourseModule({required this.CourseName});
  late int CourseName;
  @override
  State<CourseModule> createState() => _CourseModuleState();
}

class _CourseModuleState extends State<CourseModule> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBackgroundColor,
        body: Column(
          children: [
          Container(
            width: double.maxFinite,
          padding:EdgeInsets.all(10),
          margin: EdgeInsets.all(1),
            child:Row(children: [
              Text('CourseName ${widget.CourseName}',style:TextStyle(fontSize: 30,color:Colors.white))
            ],)
          ),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(onTap: () {},
                  child:Container(
                                height: 50,
                                width: double.maxFinite,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: subBackgroundColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text('Module ${index+1}',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

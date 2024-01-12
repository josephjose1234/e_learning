import 'package:flutter/material.dart';

class CourseComponent extends StatelessWidget {
  const CourseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Subject(CourseBackgroundColor: Colors.red, CourseName: 'Chartered Accountant'),
                  Subject(CourseBackgroundColor: Colors.orange, CourseName: 'ACCA'),
                  Subject(CourseBackgroundColor: Colors.yellow, CourseName: 'CSS')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Subject(CourseBackgroundColor: Color.fromARGB(255, 191, 238, 137), CourseName: 'Stream '),
                  Subject(CourseBackgroundColor: const Color.fromARGB(255, 162, 106, 22), CourseName: 'Stream 22'),
                  Subject(CourseBackgroundColor: Color.fromARGB(255, 80, 129, 197), CourseName: 'Stream 333')
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Subject(CourseBackgroundColor: Color.fromARGB(255, 74, 220, 181), CourseName: 'Stream 4444'),
                  Subject(CourseBackgroundColor: const Color.fromARGB(255, 162, 106, 22), CourseName: 'Stream 55555'),
                  Subject(CourseBackgroundColor: Color.fromARGB(255, 80, 129, 197), CourseName: 'Stream 6666')
                ],
              )
            ]),
          );
  }
}

class Subject extends StatefulWidget {
   Subject({required this.CourseBackgroundColor,
   required this.CourseName
   });
late Color CourseBackgroundColor;
late String CourseName;
  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
                   padding:EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    height: 40,
                    child: Center(child: Text(widget.CourseName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    decoration:
                        BoxDecoration(
                          color: widget.CourseBackgroundColor,
                          borderRadius: BorderRadius.circular(20)),
                  );
  }
}
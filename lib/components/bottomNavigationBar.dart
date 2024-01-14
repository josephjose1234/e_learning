import 'package:e_learning/screens/courseScreen.dart';
import 'package:e_learning/screens/homeScreen.dart';
import 'package:e_learning/screens/profileScreen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color.fromARGB(255,11, 20, 26),
      // Your bottom navigation bar content here
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );},
          child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Center(
                  child: Icon(
                Icons.home,
                color: Colors.white,
              ))),
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CourseScreen()),
            );},
          child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Center(
                  child: Icon(
                Icons.menu_book,
                color: Colors.white,
              ))),
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );},
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

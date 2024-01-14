import 'package:e_learning/screens/courseScreen.dart';
import 'package:e_learning/screens/homeScreen.dart';
//import 'package:e_learning/screens/homeScreen/homeScreen.dart';
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
          child: BottomButton(buttonIcon: Icon(Icons.home)),
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CourseScreen()),
            );},
          child:  BottomButton(buttonIcon: Icon(Icons.menu_book_rounded)),
        ),
        GestureDetector(
          onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );},
          child:  BottomButton(buttonIcon: Icon(Icons.person)),
        )
      ]),
    );
  }
}

class BottomButton extends StatefulWidget {
  const BottomButton({
    required this.buttonIcon
  });
final Icon buttonIcon ;
  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        child: Center(
            child: Icon(
          widget.buttonIcon.icon,
          color: Colors.white,
        )));
  }
}

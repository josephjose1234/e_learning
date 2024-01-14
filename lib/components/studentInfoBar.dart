import 'package:e_learning/colors.dart';
import 'package:flutter/material.dart';

class StudentInfoBar extends StatelessWidget {
  const StudentInfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.person, size: 50, color: textColor),
            ),
            Text('Joseph',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
              onTap: () {
                // Show the "Under Construction" dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Under Construction'),
                      content: Text(
                          'This feature is currently under construction. Please check back later.'),
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
              child: Icon(
                Icons.notifications,
                size: 35,
                color: textColor,
              )),
        )
      ],
    ));
  }
}

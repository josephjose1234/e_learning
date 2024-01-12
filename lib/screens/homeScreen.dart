import 'package:e_learning/components/bottomNavigationBar.dart';
import 'package:e_learning/components/courseComponent.dart';
import 'package:e_learning/components/explore.dart';
import 'package:e_learning/components/progress.dart';
import 'package:e_learning/components/studentInfoBar.dart';
import 'package:e_learning/components/searchBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children:[ Column(
          children: [
            //studentName
            StudentInfoBar(),
            //searchBar
            Search(),
            //Explore
            Explore(),
            //CourseComponent
            CourseComponent(),
            //Progress
            Progress()
          ],
        ),
         //bottomNavbar
        Positioned(
      bottom: 1,
      left: 0,
      right: 0,
      child:BottomBar() ),
        ]
      ),
    ));
  }
}
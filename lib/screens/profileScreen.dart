import 'package:e_learning/components/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                //profile
                Center(
                  child: Container(
                      margin: EdgeInsets.all(20),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(150)),
                      child: Icon(Icons.person, size: 200)),
                ),
                //Tiles
                TileName(item: 'edit'),
                TileName(item: 'Settings'),
                TileName(item: 'Support'),
                TileName(item: 'fees'),
                TileName(item: 'about'),
                TileName(item: 'logout'),
              ],
            ),
            //bottomNavbar
            Positioned(bottom: 1, left: 0, right: 0, child: BottomBar()),
          ],
        ),
      ),
    );
  }
}

class TileName extends StatelessWidget {
  const TileName({required this.item});
  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
        //Border.all(width: 2)),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(item), Icon(Icons.arrow_forward_ios)],
        ));
  }
}
import 'package:english_speaking_course_app/Screens/gaming/gaming.dart';
import 'package:english_speaking_course_app/Screens/home/home.dart';
import 'package:english_speaking_course_app/Screens/live_classes/live_classes.dart';
import 'package:english_speaking_course_app/Screens/profile/profile.dart';
import 'package:english_speaking_course_app/Screens/spokee/spokee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectedWidgetIndex = 0;

  List<Widget> widgets = [
    HomeScreen(),
    SpokeeScreen(),
    GamingScreen(),
    LiveClassesScreen(),
    ProfileScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedWidgetIndex = 0;
                });
              },
              child: Icon(
                Icons.home_outlined,
                size: 30,
                color: selectedWidgetIndex == 0 ? Color.fromARGB(255, 97, 0, 216) : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedWidgetIndex = 1;
                });
              },
              child: Icon(
                Icons.record_voice_over_outlined,
                size: 30,
                color: selectedWidgetIndex == 1 ? Color.fromARGB(255, 97, 0, 216) : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedWidgetIndex = 2;
                });
              },
              child: Icon(
                Icons.extension_outlined,
                size: 30,
                color: selectedWidgetIndex == 2 ? Color.fromARGB(255, 97, 0, 216) : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedWidgetIndex = 3;
                });
              },
              child: Icon(
                Icons.voice_chat_sharp,
                size: 30,
                color: selectedWidgetIndex == 3 ? Color.fromARGB(255, 97, 0, 216) : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedWidgetIndex = 4;
                });
              },
              child: Icon(
                Icons.account_circle_rounded,
                size: 30,
                color: selectedWidgetIndex == 4 ? Color.fromARGB(255, 97, 0, 216) : Colors.black,
              ),
            ),
          ],
        ),);
  }
}
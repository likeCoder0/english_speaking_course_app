import 'package:english_speaking_course_app/Components/card_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(
                    10.0), 
                child: SearchBar(
                  leading: Icon(Icons.search_outlined),
                  hintText: 'Search here...',
                  padding: MaterialStatePropertyAll(EdgeInsets.only(left: 30)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: const [
                      Color.fromARGB(255, 97, 0, 216),
                      Color.fromARGB(255, 41, 1, 109),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Learning-cuate.png'),
                    Text(
                      'English \n Speaking \n courses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Features',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: const [
                  CardBox(
                      image: 'assets/images/course.jpg',
                      title: 'Course',
                      hindiTitle: 'इंग्लिश बोलना सीखे'),
                  CardBox(
                      image: 'assets/images/assistant.jpg',
                      title: 'Spokee',
                      hindiTitle: 'अंग्रेजी में वार्तालाप'),
                  CardBox(
                      image: 'assets/images/games.jpg',
                      title: 'Gaming',
                      hindiTitle: 'खेल-खेल में इंग्लिश सीखे'),
                  CardBox(
                      image: 'assets/images/live_class.jpg',
                      title: 'Live Classes',
                      hindiTitle: 'पाठ्यक्रम'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

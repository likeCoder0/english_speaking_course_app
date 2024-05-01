import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBox extends StatefulWidget {
  const CardBox(
      {super.key,
      required String this.image,
      required String this.title,
      required String this.hindiTitle});
  final String hindiTitle;
  final String image;
  final String title;
  @override
  State<CardBox> createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  @override
  Widget build(BuildContext context) {
    return Material(
          
          color: Color.fromARGB(223, 247, 247, 247),
          elevation: 5,
          borderRadius: BorderRadius.circular(20.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  widget.image,
                  height: 120,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.hindiTitle,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadingApp extends StatefulWidget {
  @override
  _ReadingState createState() => _ReadingState();
}

class _ReadingState extends State<ReadingApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //background
          Container(
            width: size.width,
            height: size.height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/2.jpg",
                  fit: BoxFit.fill,
                  colorBlendMode: BlendMode.hue,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x6a6a6a).withOpacity(0.4),
                    ),
                  ),
                )
              ],
            ),
          ),
          //whitebox
          Positioned(
            left: size.width / 25,
            top: size.height * 5 / 28,
            child: Container(
              width: size.width * 23 / 25,
              height: size.height * 5 / 7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          Positioned(
            left: size.width * 2 / 5,
            top: size.height / 10,
            child: Column(
              children: [
                Container(
                  width: size.width / 5,
                  height: size.height / 5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage("assets/2.jpg"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Container(
                  //inja
                  padding: EdgeInsets.only(top: 105),
                  child: Text(
                    "The Girl Of Ink And Stars.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 7),
                  child: Text(
                    "Kiran .M .Hargrave",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                ),
                Container(/*inja Setareha*/),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    //inja faseleha
                    children: [
                      Container(
                        //padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(12),
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

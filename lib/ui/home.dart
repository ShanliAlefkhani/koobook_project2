import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koobook_project2/util/hexcolor.dart';
import 'package:rating_bar/rating_bar.dart';

class ReadingApp extends StatefulWidget {
  @override
  _ReadingState createState() => _ReadingState();
}

class _ReadingState extends State<ReadingApp> {
  Color _color1 = HexColor("#03fcfc");

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
                  "assets/3.jpg",
                  fit: BoxFit.cover,
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
          //white box
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: size.height * 5 / 28),
            child: Column(
              children: [
                Container(
                  width: size.width * 23 / 25,
                  height: size.height * 18 / 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  width: size.width * 22 / 25,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 50,
                        decoration: BoxDecoration(
                          color: _color1,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                            child: Text("Read Preview",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        decoration: BoxDecoration(
                          color: _color1,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                            child: Text("Buy Book",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: size.height / 10),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  width: size.width * 6 / 20,
                  height: size.height * 5 / 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage("assets/3.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "The Girl Of Ink And Stars.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Kiran .M .Hargrave",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  child: RatingBar(
                    //onRatingChanged: (rating) => setState(() => _rating = rating),
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    halfFilledIcon: Icons.star_half,
                    isHalfAllowed: true,
                    filledColor: Colors.yellow,
                    emptyColor: Colors.grey,
                    halfFilledColor: Colors.amberAccent,
                    size: 20,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          //padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          //width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _color1,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                              child: Text("Thriller",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          //width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _color1,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                              child: Text(
                            "Adventure",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          //width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _color1,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                              child: Text(
                            "Fantasy",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                //inja matn
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    "They say the day the Governor arrived, the\n"
                    "ravens did too. All the smaller birds flew\n"
                    "backward into the sea, and that is why\n"
                    "there are no songbirds on Joya. Only huge\n"
                    "ragged ravens.\n",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koobook_project2/util/hexcolor.dart';
import 'package:rating_bar/rating_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 20),
            child: Row(children: [
              Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  child: Image.asset(
                    "assets/3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Hi, Shanli!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )
            ]),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 40, left: 25),
            child: Text(
              "Library",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12.0),
            ),
            margin: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
            child: TextField(
              keyboardType: TextInputType.name,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search by title, author or series",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              //onChanged: (String value) {},
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 25),
            child: Text(
              "Recommended For You",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: size.height * 6 / 20,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      width: size.width * 5 / 20,
                      height: size.height * 4 / 20,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "The Girl of Ink\nAnd Stars",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        //inja chap chin
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Kiran .M .Hargrave",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 5 / 20,
                      height: size.height * 4 / 20,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "The Girl of Ink\nAnd Stars",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Kiran .M .Hargrave",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 5 / 20,
                      height: size.height * 4 / 20,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "The Girl of Ink\nAnd Stars",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Kiran .M .Hargrave",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 5 / 20,
                      height: size.height * 4 / 20,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "The Girl of Ink\nAnd Stars",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Kiran .M .Hargrave",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12.0)),
            child: Tabs(),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: size.height * 3 / 20,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    Container(
                      width: size.width * 5 / 30,
                      height: size.height * 4 / 30,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "The Girl of Ink\nAnd Stars",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Kiran .M .Hargrave",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )),
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
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "They say the day the Governor arrived, the\n"
                              "ravens did too.\n",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey.shade700),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: size.width * 5 / 30,
                      height: size.height * 4 / 30,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "The Girl of Ink\nAnd Stars",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Kiran .M .Hargrave",
                                style:
                                TextStyle(fontSize: 10, color: Colors.grey),
                              )),
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
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "They say the day the Governor arrived, the\n"
                                  "ravens did too.\n",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey.shade700),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: size.width * 5 / 30,
                      height: size.height * 4 / 30,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "The Girl of Ink\nAnd Stars",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Kiran .M .Hargrave",
                                style:
                                TextStyle(fontSize: 10, color: Colors.grey),
                              )),
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
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "They say the day the Governor arrived, the\n"
                                  "ravens did too.\n",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey.shade700),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  Color _color1 = HexColor("#03fcfc");
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            //inja devider, rectangular
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorPadding: EdgeInsets.only(left: 30, right: 30),
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: radius, topLeft: radius)),
              color: _color1,
            ),
            tabs: [
              Tab(
                child: Container(
                  child: Text(
                    "Trending",
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Popular",
                ),
              ),
              Tab(
                child: Text(
                  "New",
                ),
              ),
            ])
      ],
    );
  }
}

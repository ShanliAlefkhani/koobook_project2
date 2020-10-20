import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koobook_project2/util/hexcolor.dart';

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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Image.asset(
                  "assets/3.jpg",
                  fit: BoxFit.cover,
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
            margin: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12.0)),
            child: Tabs(),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            //inja devider, rectangular
            controller: _tabController,
            labelColor: Colors.black,
            indicatorColor: _color1,
            unselectedLabelColor: Colors.black,
            indicatorPadding: EdgeInsets.only(left: 30, right: 30),
            indicator: ShapeDecoration(
                color: _color1,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )),
            //unselectedLabelStyle: BorderRadius.circular(12.0),
            tabs: [
              Tab(
                child: Text(
                  "Trending",
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

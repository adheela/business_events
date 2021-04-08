import 'package:business_event/screens.dart';
import 'package:flutter/material.dart';

class NestedTabBar extends StatefulWidget {

  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 12, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
       // mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.deepOrangeAccent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "January",
            ),
            Tab(
              text: "February",
            ),
            Tab(
              text: "March",
            ),
            Tab(
              text: "April",
            ),
            Tab(
              text: "May",
            ),
            Tab(
              text: "June",
            ),
            Tab(
              text: "July",
            ),
            Tab(
              text: "August",
            ),
            Tab(
              text: "September",
            ),
            Tab(
              text: "October",
            ),
            Tab(
              text: "November",
            ),
            Tab(
              text: "December",
            ),
          ],
        ),

        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black54,width: 0.4, ),
            ),),
        ),

                    Flexible(
                      child: Container(
                      height: screenHeight * 0.80,
                      // margin: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: TabBarView(
                        controller: _nestedTabController,
                        children: <Widget>[
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                          Screens(),
                        ],
                      ),
                      ),
                    ),
                ],
                );
  }
}
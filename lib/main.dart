import 'package:flutter/material.dart';
import 'nestedTabBarView.dart';
void main() {
  runApp(MaterialApp(
    title: 'Entertainment',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> with TickerProviderStateMixin{
  TabController _tabController;
  var names = [
    "Adheela Farzana",
    "Resmi A R",
    "Sangeetha P",
    "Shebon Shajan",
    "Sneha Meto",
    "Swathi Krishna"
  ];
  var titleList = [
    "London Fashion Week Fashion Shows & Events",
    "London Fashion Week Fashion Shows & Events",
    "London Fashion Week Fashion Shows & Events",
    "London Fashion Week Fashion Shows & Events",
    "London Fashion Week Fashion Shows & Events",
    "London Fashion Week Fashion Shows & Events"
  ];

  // Description List Here
  var descList = [
    "04 August 2020 • 02:40AM",
    "04 August 2020 • 02:40AM",
    "04 August 2020 • 02:40AM",
    "04 August 2020 • 02:40AM",
    "04 August 2020 • 02:40AM",
    "04 August 2020 • 02:40AM"
  ];

  // Image Name List Here
  var imgList = [
    "assets/fashion-1.jpeg",
    "assets/fashion-2.jpeg",
    "assets/fashion-3.jpg",
    "assets/fashion-4.jpeg",
    "assets/fashion-5.jpeg",
    "assets/fashion-6.jpeg"
  ];

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(

        elevation: 0.0,
        shadowColor : Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black54,
          ),
          onPressed: () {
          // Navigator.of(context).pop(),
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
                color: Colors.black54,
            ),
            onPressed: () {
              // TODO:
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Entertainment',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
        body: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            NestedTabBar(),
          ],
          controller: _tabController,
        )
      // body: ListView.builder(
      //   itemCount: imgList.length,
      //   itemBuilder: (context, index) {
      //
      //     return Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: <Widget>[
      //         // Padding(padding: EdgeInsets.all(30.0),),
      //           Container(
      //             margin: EdgeInsets.all(15.0),
      //             width: 100,
      //             height: 100,
      //             child: ClipRRect(
      //
      //               child: Image.asset(imgList[index],
      //                 fit: BoxFit.fitWidth,
      //               ),
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //           ),
      //             Flexible(
      //             // child: Padding(
      //             //   padding: const EdgeInsets.all(1.0),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: <Widget>[
      //                   Text(
      //                     titleList[index],
      //                     maxLines: 2,
      //                     overflow: TextOverflow.ellipsis,
      //                     style: TextStyle(
      //                       fontSize: 18,
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     height: 5,
      //                   ),
      //                   Container(
      //                     // width: width,
      //                     child: Text(
      //                       descList[index],
      //                       maxLines: 3,
      //                       style: TextStyle(
      //                           fontSize: 10,
      //                           color: Colors.black54,
      //                       ),
      //                     ),
      //                   ),
      //                   Row(
      //                     children: [
      //                       CircleAvatar(
      //                         backgroundImage: AssetImage(imgList[index]),
      //                         radius: 10.0,
      //                       ),
      //                       Container(
      //                         margin: EdgeInsets.all(15.0),
      //                         // width: width,
      //                         child: Text(
      //                           names[index],
      //                           maxLines: 3,
      //                           style: TextStyle(
      //                             fontSize: 10,
      //                             color: Colors.black54,
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ),
      //
      //             // ),
      //         ],
      //       );
      //   },
      // ),
    );
  }
}







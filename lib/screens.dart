import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Screens extends StatefulWidget {
  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {

  static const List<double> initialRating = [2, 3, 5, 4.5, 2.5, 4];

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
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index) {

        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Padding(padding: EdgeInsets.all(30.0),),
            Flexible(
              child: Container(
              margin: EdgeInsets.all(12.0),
              width: 100,
              height: 100,
              child: ClipRRect(

                child: Image.asset(imgList[index],
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),),
            Flexible(
              // child: Padding(
              //   padding: const EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    titleList[index],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    // width: width,
                    child: Text(
                      descList[index],
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(imgList[index]),
                        radius: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        // width: width,
                        child: Text(
                          names[index],
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Container(
                        child: SmoothStarRating(
                          size: 15.0,
                          color: Colors.deepOrange,
                          rating: initialRating[index],
                          onRated: (double value) {
                            debugPrint(
                                'Image no. $index was rated $value stars!!!');
                          },
                          borderColor: Colors.black54,
                          allowHalfRating: false,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

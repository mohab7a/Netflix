import 'package:flutter/material.dart';
import 'package:netflix_app/Widget/staring_item.dart';
import 'package:netflix_app/Widget/recommended_item.dart';

class MovieScreen extends StatefulWidget {
  static String routeName = '/MovieScreen';

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3+100,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          })),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                          onPressed: null)),
                  Positioned(
                    top: 200,
                    child: Container(
                      color: Colors.black.withOpacity(.25),
                      height: MediaQuery.of(context).size.height / 3-100,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('movie name'),
                                  Text('R a t i n g . . . .'),
                                ],
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn',
                            softWrap: true,
                            maxLines: 4,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              //  overflow: Overflow.visible,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Cast"),
              SizedBox(
                height: 10,
              ),
              StaringItem(),
              SizedBox(
                height: 10,
              ),
              Text("Smilier Like This"),
              SizedBox(
                height: 10,
              ),
              RecommendedItem(),
            ],
          ),
        ),
      ),
    );
  }
}

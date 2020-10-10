import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Widget/staring_item.dart';
import 'package:netflix_app/Widget/recommended_item.dart';
import 'package:netflix_app/Widget/trend_item.dart';
import 'package:netflix_app/Widget/movie_view_item.dart';
import 'package:netflix_app/detailspage.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            snap: true,
            // pinned: true,
            toolbarHeight: 50,
            //stretch: true,
            //expandedHeight: MediaQuery.of(context).size.height / 1.8,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/d.png',
                  width: 60,
                  height: 50,
                ),
                ButtonBar(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'TV Shows',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Movies',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'My List',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height / 1.8,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 2.3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text.rich(
                          TextSpan(
                              text:
                              'Future  •  Sci-fi  •  Apocalypse  •  Netflix Original'),
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          textColor: Colors.white70,
                          onPressed: () {},
                          child:  Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.done, color: Colors.white),
                                onPressed: () {
                                  _showToast(context);
                                },
                              ),
                              Text('My List')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                          color: Colors.white,
                          onPressed: () {},
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.play_arrow,color: Colors.black,size: 25,),
                              Text(
                                'Play',
                                style: TextStyle(color: Colors.black,fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                          textColor: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage()),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Info')
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Intro.jpg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.multiply),
                    )),
              ),
            ]
          )),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                StaringItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // To convert this infinite list to a list with three items,
                // uncomment the following line:
                // if (index > 3) return null;
                return TrendItem();
              },
              // Or, uncomment the following line:
              // childCount: 3,
            ),
          ),
        ],

        // appBar: AppBar(
        //   elevation:0 ,
        //   automaticallyImplyLeading: false,
        //   title: Image.asset(
        //     'assets/l.png',
        //     width: 80,
        //     height: 60,
        //   ),
        //   actions: [FlatButton(
        //     onPressed: () {
        //     },
        //     child: Text(
        //       'PRIVACY',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        //     FlatButton(
        //       onPressed: () {},
        //       child: Text(
        //         'HELP',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 16,
        //         ),
        //       ),
        //     ),
        //     FlatButton(
        //       onPressed: () {
        //
        //       },
        //       child: Text(
        //         'SIGN IN',
        //         style: TextStyle(color: Colors.white, fontSize: 16),
        //       ),
        //     ),],
        //   backgroundColor: Colors.black,
        // ),
        // body: Container(
        //   color: Colors.black54,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         InkWell(child: MovieViewItem(),onTap: (){Navigator.of(context).pushNamed(MovieScreen.routeName);},),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Text("Staring"),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         StaringItem(),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Text("Recommended for you"),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         RecommendedItem(),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Text("Trending"),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         TrendItem()
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.hideCurrentSnackBar();
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        content: Text('Added to My List',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        // action: SnackBarAction(
        //     textColor: Colors.white54,
        //     label: 'OK',
        //     onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

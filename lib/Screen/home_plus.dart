import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Widget/category_title.dart';
import 'package:netflix_app/Widget/originals_item.dart';
import 'package:netflix_app/Widget/recommended_item.dart';
import 'package:netflix_app/Widget/staring_item.dart';
import 'package:netflix_app/Widget/top_ten_item.dart';
import 'package:netflix_app/Widget/trend_item.dart';
import 'file:///C:/Users/HELAL/AndroidStudioProjects/Netflix/lib/Widget/detailspage.dart';

class HomePlusScreen extends StatelessWidget {
  final String category;
  static String routeName = '/HomePlusScreen';

  const HomePlusScreen({this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){Navigator.of(context).pop();},
                  child: Image.asset(
                    'assets/d.png',
                    width: 60,
                    height: 50,
                  ),
                ),
                ButtonBar(
                  children: [
                    FlatButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            builder: (context) => Container(
                              height: MediaQuery.of(context).size.height,
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 240,),
                                  Text('All',style:TextStyle(fontSize: 20),),
                                  SizedBox(height: 10,),
                                  Text('TV Shows',style:TextStyle(fontSize: 20),),
                                  SizedBox(height: 10,),
                                  Text('Movies',style:TextStyle(fontSize: 20),),
                                  SizedBox(height: 10,),
                                  Text('My List',style:TextStyle(fontSize: 20),),
                                  SizedBox(height: 250,),
                                  FloatingActionButton( onPressed: () => Navigator.pop(context),
                                      child: Icon(Icons.close,color: Colors.black,size: 30,),backgroundColor: Colors.white,)
                                ],
                              ),
                            ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '$category',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            builder: (context) => Container(
                              height: MediaQuery.of(context).size.height,
                              color: Colors.transparent,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:600,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 60,),
                                            Text('All Genres',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 10,),
                                            Text('Available for Download',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Action',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Anime',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Asian',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('British',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Comedies',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Crime',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Docuseries',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Dramas',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('European',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Halloween',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('History',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Horror',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Kids',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Middle Eastern',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Reality & Talk',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Romance',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Sci_Fi & Fantasy',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Science & Nature',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Teen',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Thriller',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Turkish',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('US',style:TextStyle(fontSize: 20),),
                                            SizedBox(height: 10,),
                                            Text('Audio Description',style:TextStyle(fontSize: 20),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    FloatingActionButton( onPressed: () => Navigator.pop(context),
                                      child: Icon(Icons.close,color: Colors.black,size: 30,),backgroundColor: Colors.white,elevation: 0,),
                                  ],
                                ),
                              ),
                            ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'All Genres',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                                     ],
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.3,
                      ),
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
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.done, color: Colors.white),
                                  onPressed: () {
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                Text(
                                  'Play',
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 18),
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
                                    builder: (context) => DetailsPage()),
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
              ])),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Previews'),
                StaringItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Comedies'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Trending Now'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('My List'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Netflix Originals'),
                OriginalsItem(),
              ],
            ),

          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Emotional Movies'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Continue Watching for Mohab'),
                RecommendedItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Egyptian Movies'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Hollywood Movies'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Dramas'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Action & Adventure'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Top 10 Movies in Egypt Today'),
                TopTenItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Romantic Movies'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Romantic Movies Starring Woman'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Thrillers & Horror'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Movies Directed By Woman'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('New Releases'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Top Picks for Mohab'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Middle Eastern Comedies'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Women Behind the Camera'),
                TrendItem(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryTitle('Crime Movies'),
                TrendItem(),
              ],
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
}

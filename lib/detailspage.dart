import 'package:flutter/material.dart';
import 'dart:ui';
import 'Widget/episode_block.dart';
import 'big_button.dart';
import 'film_card.dart';


class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topRight,
                      colors: [Colors.black, Colors.blueGrey])),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage("assets/Vampire.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "98% Match",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 16),
                                  children: [
                                TextSpan(
                                    text: "    2017",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ))
                              ])),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(
                                  "18+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "8 Seasons",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.hd,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Button(
              color: Colors.white,
              textColor: Colors.black,
              text: "Play",
              iconColor: Colors.black,
              icon: Icons.play_arrow,
            ),
            Button(
              color: Colors.grey.shade900,
              textColor: Colors.white,
              text: "Download S1:E1",
              iconColor: Colors.white,
              icon: Icons.arrow_downward,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 2.5),
              child: Text(
                "The lives, loves, dangers and disasters in the town, Mystic Falls a teenage girl is suddenly torn between two vampire brothers.",
                maxLines: 3,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.5),
              child: Text(
                "Stars: Nina Dobrev, Paul Wesley, Ian Somerhalder | See full cast & crew",
                maxLines: 1,
                style: TextStyle(color: Colors.grey, fontSize: 16),
                softWrap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.5),
              child: Text(
                "Creators: Julie Plec, Kevin Williamson",
                maxLines: 1,
                style: TextStyle(color: Colors.grey, fontSize: 16),
                softWrap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          "My List",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              size: 30,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              showDialog(context: context,
                                  builder: (ctx)=>AlertDialog(
                                    backgroundColor: Colors.transparent,
                                    contentPadding: EdgeInsets.only(right: 157,),
                                    titlePadding: EdgeInsets.only(top: 180,left: 10),
                                    title: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.white, width: 2),
                                              ),
                                              child: Icon(Icons.thumb_down),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.white, width: 2),
                                              ),
                                              child: Icon(Icons.thumb_up),
                                            ),
                                          ],
                                        ),
                                    content: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.white, width: 2),
                                      ),
                                      child: Icon(Icons.close),
                                    ),
                                  )
                              );
                            },
                          ),
                        ),
                        Text(
                          "Rate",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: IconButton(
                            icon: Icon(
                              Icons.share,
                              size: 30,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade900,
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: TabBar(
                  labelStyle: TextStyle(fontSize: 16),
                  labelPadding: EdgeInsets.all(10),
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 4,
                    color: Colors.red,
                  ))),
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: "EPISODES",
                    ),
                    Tab(
                      text: "MORE LIKE THIS",
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(controller: _tabController, children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(onPressed: (){},
                        child: Container(
                          decoration: BoxDecoration(
                              color:Colors.grey.withAlpha(100),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          width:120,
                          height:40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Season 1',style: TextStyle(fontSize: 15,color: Colors.white),),
                              Icon(Icons.arrow_drop_down,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      episodeBlock("1.Pilot"),
                      episodeBlock("1.Pilot"),
                      episodeBlock("1.Pilot"),
                      episodeBlock("1.Pilot"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilmGridCard(),
                        FilmGridCard(),
                        FilmGridCard(),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilmGridCard(),
                        FilmGridCard(),
                        FilmGridCard(),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilmGridCard(),
                        FilmGridCard(),
                        FilmGridCard(),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilmGridCard(),
                        FilmGridCard(),
                        FilmGridCard(),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilmGridCard(),
                        FilmGridCard(),
                        FilmGridCard(),
                      ],
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

// class DetailsPage extends StatelessWidget{
//     final String data;
//
//   DetailsPage({this.data});
//   @override
//   Widget build(BuildContext context){
//     double c_width = MediaQuery.of(context).size.width*0.95;
//
//     return Scaffold(
//
//       body: Container(
//         color:Colors.black87,
//         child: ListView(
//           children: <Widget>[
//             Container(
//               height: 240.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(SeriesData().series[data]['thumbnail']),
//                   fit: BoxFit.cover,
//                   colorFilter: ColorFilter.mode(Colors.black,BlendMode.softLight),
//                 )
//               ),
//               width: double.infinity,
//               child:  BackdropFilter(
//                 filter:ImageFilter.blur(sigmaX: 1, sigmaY: 1),
//                 child:
//               Stack(children: <Widget>[
//                 Positioned(
//                   top:10.0,
//                   left:5.0,
//                   child: IconButton(
//                     icon: Icon(Icons.arrow_back,color:Colors.white),
//                     onPressed: (){
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ),
//                 Positioned(
//                   left: 120.0,
//                   right: 120,
//                   top:60,
//                   child: IconButton(
//                   icon: Icon(Icons.play_circle_outline,color:Colors.white70,size:110),
//                   onPressed: (){
//                   },
//                 ),
//                 )
//               ],),)
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 10,width: double.infinity,),
//                 // Row(
//                 //   children: <Widget>[
//                 //     SizedBox(width:10),
//                 //     Text(
//                 //   SeriesData().series[data]['title'],
//                 //   style: TextStyle(
//                 //     fontSize: 25,
//                 //     color: Colors.white,
//                 //     fontWeight: FontWeight.w500
//                 //   ),
//                 // )
//                 //   ],
//                 // ),
//                 // SizedBox(height: 15,width: double.infinity,),
//                 Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Column(
//                     children: [
//                       RaisedButton(onPressed:(){},
//                           color: Colors.white,
//                           padding: EdgeInsets.all(8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.play_arrow,color: Colors.black,),
//                               Text("Play",style: TextStyle(color: Colors.black),),
//                             ],
//                           )),
//                       RaisedButton(onPressed:(){},
//                           color: Colors.grey[400],
//                           padding: EdgeInsets.all(8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.file_download,color: Colors.white,),
//                               Text("Download",style: TextStyle(color: Colors.white),),
//                             ],
//                           )),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10,width: double.infinity,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                       Text(
//                   SeriesData().series[data]['match'],
//                   style: TextStyle(
//                     fontSize: 17,
//                     color: Colors.green.withGreen(200),
//                     fontWeight: FontWeight.w600
//                   ),
//                 ),
//                 SizedBox(width:20),
//                     Text(
//                   SeriesData().series[data]['year'] + '  16+' + (SeriesData().series[data]['movie'] == 'true'? '  1h 52min':''),
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white.withOpacity(0.6),
//                     fontWeight: FontWeight.w200
//                   ),
//                 ),
//                   ],
//                 ),
//                 SizedBox(height: 10,width: double.infinity,),
//                 Container(
//                   width: c_width,
//                   child: Row(
//                   children: <Widget>[
//                     SizedBox(width:10),
//                     Flexible(
//                       child: Text(
//                   SeriesData().series[data]['description'],
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.white30,
//                     fontWeight: FontWeight.w100,
//                   ),
//                   textAlign: TextAlign.left,
//                   softWrap: true,
//                 ),
//                     )
//
//                   ],
//                 ),
//                 ),
//                  Container(
//                   width: c_width,
//                   padding: EdgeInsets.symmetric(vertical:5),
//                   child: Row(
//                   children: <Widget>[
//                     SizedBox(width:10),
//                     Flexible(
//                       child:   new Text(
//                   'Starring : '+SeriesData().series[data]['starring'],
//                   style: new TextStyle(
//                     fontSize: 13,
//                     color: Colors.white54,
//                     fontWeight: FontWeight.w100,
//                   ),
//                   textAlign: TextAlign.left,
//                   softWrap: true,
//                 ),
//                     )
//
//                   ],
//                 ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.0),
//                   padding: EdgeInsets.symmetric(horizontal:20),
//                   width: double.infinity,
//                   height: 80,
//                   child: Row(
//                     children: <Widget>[
//                       Column(
//                         children: <Widget>[
//                           IconButton(
//                         icon: Icon(Icons.done,color:Colors.white),
//                         onPressed: (){},
//                       ),
//                       Text('My List',style: TextStyle(
//                         color:Colors.white30,
//                         fontSize: 10
//                       ),)
//                         ],
//                       ),
//                       SizedBox(width:40),
//                       Column(
//                         children: <Widget>[
//                           IconButton(
//                         icon: Icon(Icons.thumb_up,color:Colors.white),
//                         onPressed: (){},
//                       ),
//                       Text('Rate',style: TextStyle(
//                         color:Colors.white30,
//                         fontSize: 10
//                       ),)
//                         ],
//                       ),
//                       SizedBox(width: 40,),
//                       Column(
//                         children: <Widget>[
//                           IconButton(
//                         icon: Icon(Icons.share,color:Colors.white),
//                         onPressed: (){},
//                       ),
//                       Text('Share',style: TextStyle(
//                         color:Colors.white30,
//                         fontSize: 10
//                       ),)
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(
//                   color: Colors.black,
//                   height: 1,
//                 ),
//                 SizedBox(height: 2,width: double.infinity,),
//                 Row(
//                   children: <Widget>[
//                     SizedBox(width: 20,),
//                     Column(
//                       children: <Widget>[
//                     SizedBox(child: Container(color:Colors.red,height: 2,width: 80,),height: 2.0,),
//                         SizedBox(height: 10,),
//                     Text('EPISODES',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color:Colors.white
//                   ),)
//                       ],
//                     )
//                   ,
//                   SizedBox(width: 20,),
//                   Text('MORE LIKE THIS',
//                   style: TextStyle(
//                     fontSize: 15,
//                     color:Colors.white54
//                   ),),
//                 ],),
//                 SizedBox(width: double.infinity,height: 10,),
//                 episodeBlock('1. The One With The Blackout'),
//                 episodeBlock('2. The One Where Everyone Knows'),
//                 episodeBlock('3. The one With Late Thanksgiving')
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
//

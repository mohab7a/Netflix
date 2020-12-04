import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/notifications_screen.dart';

class ComingSoonScreen extends StatelessWidget {
  static String routeName = '/comingSoonScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(NotificationsScreen.routeName);
                  },
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (ctx, i) => Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                //colors: [Colors.deepPurple,Colors.red,Colors.blue]),
                                colors: [Colors.deepPurple,Colors.amber,Colors.blueAccent]),
                              image: DecorationImage(image:AssetImage('assets/${ Random().nextInt(10)+1}.png'),fit: BoxFit.fitHeight)
                          ),
                          child: Center(child: Icon(Icons.slow_motion_video_sharp,size: 120,color: Colors.grey[50],)),
                          height: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/logo.png',
                                width: 90,
                                height: 80,
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Remind Me',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Season 3 Coming October 2',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'SNL Arabia',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'SNL Arabia NL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL Arabia',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          maxLines: 3,
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Witty',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 2.5,
                            ),
                            Text(
                              'Witty',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 2.5,
                            ),
                            Text(
                              'Witty',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 2.5,
                            ),
                            Text(
                              'Witty',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 2.5,
                            ),
                            Text(
                              'Witty',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

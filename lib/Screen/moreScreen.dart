import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '../Account_Icon.dart';
import 'package:netflix_app/listItem.dart';
import '../SocialMediaDivider.dart';
import 'package:netflix_app/SocialMediaButton.dart';
import 'package:netflix_app/SocialMediaDivider.dart';


class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AccountIcon(
                    userName: "Khaled",
                    imageUrl:"assets/Splash.png",

                  ),
                  AccountIcon(
                    userName: "Mohamed",
                    imageUrl:"assets/Splash.png",
                  ),
                  AccountIcon(
                    userName: "Nour",
                    imageUrl:
                    "assets/Splash.png",
                  ),
                  AccountIcon(
                    userName: "Mohab",
                    imageUrl:
                    "assets/Splash.png",
                  ),
                  AccountIcon(
                    userName: "3GWA",
                    imageUrl:
                    "assets/Splash.png",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      " Manage Profiles",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade900,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.card_giftcard,
                              size: 22,
                            ),
                          ),
                          Text(
                            "Give Free Netflix to Your Friends. ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                        child: Text(
                          "Share this link with friends or family and the will start Watching Netflix,just like you.",
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Text("Terms&Conditions",style: TextStyle(color: Colors.white,decoration: TextDecoration.underline),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10,left: 4,bottom: 10),
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("https://www.netflix.com/eg/blablablab",overflow: TextOverflow.ellipsis,maxLines:1,softWrap: false,),

                              RaisedButton(onPressed: (){},
                                child: Text("Copy Link",style: TextStyle(color: Colors.black),),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(userName: "Twitter",buttonData: Buttons.Twitter,),
                          SocialDivider(),
                          SocialIcon(userName: "Facebook",buttonData: Buttons.Facebook,),
                          SocialDivider(),
                          SocialIcon(userName: "LinkedIn",buttonData: Buttons.LinkedIn,),
                          SocialDivider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.more_horiz,color: Colors.white,size: 35,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("More",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.check,color: Colors.white,size: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("My List",style: TextStyle(fontSize: 22),),
                    )
                  ],
                ),

              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
                height: 1,
              ),

              ListItem("App Setting"),
              ListItem("Account"),
              ListItem("Help"),
              ListItem("Sign Out"),
            ],
          ),
        ),
      ),
    );
  }
}
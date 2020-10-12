import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:netflix_app/Screen/setting_Screen.dart';
import 'package:netflix_app/listItem.dart';
import '../SocialMediaDivider.dart';
import 'package:netflix_app/SocialMediaButton.dart';
import 'package:netflix_app/SocialMediaDivider.dart';
import 'login_screen.dart';


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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Container(
                    color: Colors.white,

                    margin: EdgeInsets.only(right:5.0),
                    height: 70.0,
                    width: 70.0,
                  ),
                  Container(
                    color: Colors.white,

                    height: 70.0,
                    width: 70.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: 2.4
                        )
                    ),
                    margin: EdgeInsets.all(5.0),
                    height: 90.0,
                    width: 90.0,
                  ),
                  Container(
                    color: Colors.white,
                    height: 70.0,
                    width: 70.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left:5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white54
                        )
                    ),
                    height: 70.0,
                    width: 70.0,
                    child: new Center(

                      child: Icon(Icons.add,size:40.0,color:Colors.white70),),
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
                              SelectableText("https://www.netflix.com/eg/blablablab",maxLines:1,cursorColor: Colors.white38,),

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

              InkWell(child: ListItem("App Setting"),onTap: (){
                Navigator.of(context).pushReplacementNamed(SettingScreen.routeName);
              },),
              ListItem("Account"),
              ListItem("Help"),
              InkWell(child: ListItem("Sign Out"),onTap: (){
                showDialog(context: context,
                  builder: (ctx)=>AlertDialog(
                    title: Text("Are you sure?"),
                    content: Text("Do you want to sign out?"),
                    actions: [
                      FlatButton(onPressed: (){
                        Navigator.of(context).pop();
                      },
                          child: Text("No")),
                      FlatButton(onPressed: (){
                        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                      },
                          child: Text("Yes")),
                    ],
                  )
              );},),
            ],
          ),
        ),
      ),
    );
  }
}
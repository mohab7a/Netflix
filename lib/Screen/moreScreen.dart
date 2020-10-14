import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:netflix_app/Screen/help_screen.dart';
import 'package:netflix_app/Screen/setting_Screen.dart';
import 'package:netflix_app/Widget/SocialMediaDivider.dart';
import 'file:///C:/Users/HELAL/AndroidStudioProjects/Netflix/lib/Widget/listItem.dart';
import 'package:url_launcher/url_launcher.dart';
import 'file:///C:/Users/HELAL/AndroidStudioProjects/Netflix/lib/Widget/SocialMediaButton.dart';

import 'login_screen.dart';
import 'manage_profile.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  _privacyURL() async {
    const url = 'https://help.netflix.com/legal/privacy';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage('assets/p2.png'),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.only(right: 5.0),
                    height: 70.0,
                    width: 70.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage('assets/owner.png'),
                            fit: BoxFit.cover)),
                    height: 70.0,
                    width: 70.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/nk.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.white, width: 2.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: EdgeInsets.all(5.0),
                    height: 90.0,
                    width: 90.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage('assets/p3.png'),
                            fit: BoxFit.cover)),
                    height: 70.0,
                    width: 70.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 70.0,
                    width: 70.0,
                    child: new Center(
                      child: Icon(Icons.add, size: 40.0, color: Colors.white70),
                    ),
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ManageProfile.routeName);
                      },
                      child: Text(
                        " Manage Profiles",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
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
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Share this link with friends or family and the will start Watching Netflix,just like you.",
                          maxLines: 2,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Terms&Conditions",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 10, left: 4, bottom: 10),
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SelectableText(
                                "https://www.netflix.com/eg/blablablab",
                                maxLines: 1,
                                cursorColor: Colors.white38,
                              ),
                              RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  "Copy Link",
                                  style: TextStyle(color: Colors.black),
                                ),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(
                            userName: "Twitter",
                            buttonData: Buttons.Twitter,
                          ),
                          SocialDivider(),
                          SocialIcon(
                            userName: "Facebook",
                            buttonData: Buttons.Facebook,
                          ),
                          SocialDivider(),
                          SocialIcon(
                            userName: "LinkedIn",
                            buttonData: Buttons.LinkedIn,
                          ),
                          SocialDivider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "More",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
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
                    Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "My List",
                        style: TextStyle(fontSize: 22),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
                height: 1,
              ),
              InkWell(
                child: ListItem("App Setting"),
                onTap: () {
                  Navigator.of(context).pushNamed(SettingScreen.routeName);
                },
              ),
              InkWell(
                child: ListItem("Account"),
                onTap: _privacyURL,
              ),
              InkWell(
                child: ListItem("Help"),
                onTap: () {
                  Navigator.of(context).pushNamed(HelpScreen.routeName);
                },
              ),
              InkWell(
                child: ListItem("Sign Out"),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            //title: Text("Are you sure?"),
                            content: Text(
                              "Are you sure?",
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("No")),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        LoginScreen.routeName);
                                  },
                                  child: Text("Sign Out")),
                            ],
                          ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/help_screen.dart';
import 'package:netflix_app/Screen/set_up_credit.dart';

import 'login_screen.dart';

class SetUpPayment extends StatelessWidget {
  static String routeName = "SetUpPayment";

  static const kActionAppBarStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo.png",
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height,
        ),
        actions: [
          Center(
              child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return HelpScreen();
              }));
            },
            child: Text(
              "HELP",
              style: kActionAppBarStyle,
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
                child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                                title: Text(
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
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (ctx) {
                                          return LoginScreen();
                                        }));
                                      },
                                      child: Text("Sign Out")),
                                ],
                              ));
                    },
                    child: Text("SIGN OUT", style: kActionAppBarStyle))),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 10, horizontal: 17),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "assets/Lock.png",
                  width: MediaQuery.of(context).size.width / 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: RichText(
                    text: TextSpan(
                        text: "STEP",
                        style: TextStyle(color: Colors.grey.shade700),
                        children: [
                      TextSpan(
                          text: " 3 ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "OF",
                          style: TextStyle(color: Colors.grey.shade700)),
                      TextSpan(
                          text: " 3",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Set up your payment.",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Your membership starts as soon as\nyou set up payment.",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "No commitments. Cancel online at\nanytime",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SetUpCredit.routeName);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Credit or Debit Card",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 20,
                            color: Colors.grey.shade700),
                      ),
                      Spacer(),
                      Transform.rotate(
                          angle: 3.14,
                          //transform: new Matrix4.rotationZ(0.174533),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey.shade400,
                          ))
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.grey)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

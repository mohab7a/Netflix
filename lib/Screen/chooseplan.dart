import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/login_screen.dart';
import 'package:netflix_app/Screen/web_sign.dart';
import '../Widget/dealcard.dart';
import 'help_screen.dart';

class ChoosePlan extends StatefulWidget {
  static String routeName= "ChoosePlan";
  @override
  _ChoosePlanState createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  String radioItem = '';
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
                onTap: (){
                  Navigator.of(context).pushNamed(HelpScreen.routeName);
                },
                child: Text(
            "HELP",
            style: kActionAppBarStyle,
          ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(child: InkWell(
                onTap: (){Navigator.of(context).pushNamed(LoginScreen.routeName);},
                child: Text("SIGN IN", style: kActionAppBarStyle))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: RichText(
                      text: TextSpan(
                          text: "STEP",
                          style: TextStyle(color: Colors.grey.shade700),
                          children: [
                        TextSpan(
                            text: " 1 ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "OF",
                            style: TextStyle(color: Colors.grey.shade700)),
                        TextSpan(
                            text: " 3",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Choose the plan that's right \nfor you.",
                    style: TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Change or cancel whenever you want",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                  ),
                ),
                DealCard(
                  radioItem: radioItem,
                  cardNum: "item1",
                  dealTitle  :"Premium",
                   priceText: "EGP200/month",
                    cardName: "Best",
                  chipText:"4k+HDR",
                  userNum:   "4 users",
                  subtitle:    "Our best Video quality. Watch in \nUltra HD and HDR on 4 devices at a \ntime ",
                  color: Colors.red,

                ),
                DealCard(
                  radioItem: radioItem,
                  cardNum: "item1",
                  dealTitle: "Standard",
                  priceText: "EGP165/month",
                  cardName: "Great",
                  chipText: "1080p",
                  userNum: "2 user",
                  subtitle: "Great video quality. Watch in Full HD \non 2 devices at a time.",
                  color: Colors.pink,
                ),
                DealCard(
                  radioItem: radioItem,
                  cardNum: "item1",
                  dealTitle: "Basic",
                  priceText: "EGP120/month",
                  cardName: "Good",
                  chipText: "480p",
                  userNum: "1 user",
                  subtitle: "Good video quality. Watch in \nStandard Definition on 1 devices at a \ntime.",
                  color: Colors.blue.shade700,
                ),
               RichText(text: TextSpan(
                 style: TextStyle(
                   fontSize: 13,
                   color: Colors.grey.shade700,

                 ),
                 text: "HD (720p),Full HD (1080p),Ultra HD (4K) and HDR \navailability subject to your Internet Service and device\ncapabilities. Not all content available in HD,Full HD,\nUltra Hd, or HDR.See "
                ,
                 children: [
                   TextSpan(text:"Terms of Use ", style: TextStyle(
                     fontSize: 13,
                     color: Colors.blue.shade900,

                   ),),
                   TextSpan(text: "for more details.",style: TextStyle(
                     fontSize: 13,
                     color: Colors.grey.shade700,
                   ),)
                 ]
               )
               ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FlatButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){
                      Navigator.of(context).pushNamed(WebSign.routeName);
                    }, child: Center(child: Text("CONTINUE",style: TextStyle(fontSize: 20),)),color: Colors.red,),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



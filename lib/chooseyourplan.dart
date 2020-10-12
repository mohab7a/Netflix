import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dealoption.dart';
class ChooseYourPlan extends StatelessWidget {
  static const kActionAppBarStyle =
  TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
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
      onTap: (){},
      child: Text(
      "HELP",
      style: kActionAppBarStyle,
      ),
    )),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Center(child: InkWell(
        onTap: (){},
        child: Text("SIGN IN", style: kActionAppBarStyle))),
    )
    ],

    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Icon(Icons.check,color: Colors.red,),
              width: 50,
                height: 50,
              decoration: BoxDecoration(
                border: Border.all(color:Colors.red,width: 2,),
                shape: BoxShape.circle,
              ),
            ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: RichText(
            text: TextSpan(
                text: "STEP",
                style: TextStyle(color: Colors.grey.shade500),
                children: [
                  TextSpan(
                      text: " 1 ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "OF",
                      style: TextStyle(color: Colors.grey.shade500)),
                  TextSpan(
                      text: " 3",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                ])),),
            Text(
              "Choose your plan..",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(

                      "No commitments, cancel at any\ntime.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(

                      "Everything on Netflix for one low\nprice..",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                     "Unlimited viewing on all your\ndevices.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FlatButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: (){}, child: Center(child: Text("SEE THE PLANS",style: TextStyle(fontSize: 20),)),color: Colors.red,),
            )


          ],
        ),
      ),

    );
  }
}

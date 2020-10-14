import 'package:flutter/material.dart';
class CreateAccount extends StatelessWidget {
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
            Image.asset("assets/devices.png",width: MediaQuery.of(context).size.width/4*3,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: RichText(
                  text: TextSpan(
                      text: "STEP",
                      style: TextStyle(color: Colors.grey.shade500),
                      children: [
                        TextSpan(
                            text: " 2 ",
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
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Create your account..",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Text(
              "Netflix is personalized for you. Use\nyour email and create a password to\nWatch Netflix on any device at any\ntime.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FlatButton(
                // minWidth: double.infinity,
                // height: 50,
                onPressed: (){}, child: Center(child: Text("CONTINUE",style: TextStyle(fontSize: 20),)),color: Colors.red,),
            )
          ],
        ),
      ),
    );
  }
}

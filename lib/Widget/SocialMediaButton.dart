import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class SocialIcon extends StatelessWidget {
  SocialIcon({this.userName,this.buttonData});
 final String userName;
 final Buttons buttonData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: [
          SignInButton(
         buttonData,
          mini: true,
          onPressed: () {
      },


      ),
      Text(userName,style: TextStyle(fontWeight: FontWeight.bold,),)
      ],
      ),
    );
  }
}

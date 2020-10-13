import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class ShareIcon extends StatelessWidget {
  ShareIcon({this.userName,this.buttonData});
  final String userName;
  final Buttons buttonData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SignInButton(
              buttonData,
              mini: true,
              onPressed: () {
              },


            ),
          ),
          Text(userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}

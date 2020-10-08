import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AccountIcon extends StatelessWidget {
  AccountIcon({this.userName,this.imageUrl});
  final String userName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:(){},
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/8,
            width: MediaQuery.of(context).size.width/6.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text(userName,style: TextStyle(
            color: Colors.white,
          ),)
        ],
      ),
    );
  }
}

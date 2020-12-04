import 'dart:math';

import 'package:flutter/material.dart';
class OriginalsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) => Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  //image: DecorationImage(image:AssetImage('assets/Splash.png'),fit: BoxFit.fill,),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/${ Random().nextInt(10)+1}.png',
                    width: 170,
                    height: 300,fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          )),
    );
  }
}


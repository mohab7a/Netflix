import 'dart:math';

import 'package:flutter/material.dart';

class TopTenItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 200,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, i) => Stack(
            children: [
              Container(
                width: 140,
                height: 200,
                color: Colors.black,
              ),
              Positioned(
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    //image: DecorationImage(image:AssetImage('assets/Splash.png'),fit: BoxFit.fill,),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/${ Random().nextInt(10)+1}.png',
                      width: 100,
                      height: 200,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(

                      alignment: Alignment.bottomLeft,
                      height: 200,
                      width: 100,
                      child: Text(
                        "${i + 1}",
                        style: TextStyle(fontSize: 130,fontWeight: FontWeight.bold,color: Colors.white,textBaseline: TextBaseline.ideographic,),
                        maxLines: 1,
                        //textHeightBehavior: TextHeightBehavior.fromEncoded(5),
                        textScaleFactor: .9,
                      ),)),
              Positioned(
                  left: 1,
                  bottom: 1,
                  child: Container(

                    alignment: Alignment.bottomLeft,
                    height: 200,
                    width: 100,
                    child: Text(
                      "${i + 1}",
                      style: TextStyle(fontSize: 127,color: Colors.grey[900],textBaseline: TextBaseline.ideographic,),
                      maxLines: 1,
                      //textHeightBehavior: TextHeightBehavior.fromEncoded(5),
                      textScaleFactor: .9,
                    ),)),
            ],
            //overflow: Overflow.visible,
          )),
    );
  }
}

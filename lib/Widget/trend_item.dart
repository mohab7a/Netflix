import 'package:flutter/material.dart';
import 'dart:math';
class TrendItem extends StatefulWidget {
  @override
  _TrendItemState createState() => _TrendItemState();
}

class _TrendItemState extends State<TrendItem> {
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
          itemBuilder: (context, i) => Row(
            children: [
              Container(
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage( 'assets/${ Random().nextInt(10)+1}.png',
                  ),fit: BoxFit.fill,colorFilter:ColorFilter.mode(Colors.white12, BlendMode.lighten) ),
                  borderRadius: BorderRadius.circular(8),
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


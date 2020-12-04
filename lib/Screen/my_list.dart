import 'dart:math';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final int index;

  const MyList(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My List",style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black54,
      body:index==0?Container(color: Colors.black,):GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2/3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 60),
          padding: const EdgeInsets.only(top: 10),
          itemCount: index,
          itemBuilder: (ctx, i) => Container(
              height: MediaQuery.of(context).size.height/5.5,
              width: MediaQuery.of(context).size.width/4,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/${ Random().nextInt(10)+1}.png',
                      )
                  )
              )
            )));
  }
}

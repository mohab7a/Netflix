import 'package:flutter/material.dart';
class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/Splash.png',
                    width: 100,
                    height: 200,
                  ),
                  borderRadius: BorderRadius.circular(15),
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


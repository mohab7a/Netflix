import 'package:flutter/material.dart';
class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) => Row(
            children: [
              Column(children: [
                Container(
                  width: 100,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight:Radius.circular(5),topLeft: Radius.circular(5) ),
                    image: DecorationImage(image: AssetImage('assets/Vampire.jpg'),fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(.7),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(Icons.play_arrow,color: Colors.white,),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(5),bottomLeft: Radius.circular(5) ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.info_outline,color: Colors.white,),
                      Icon(Icons.more_vert,color: Colors.white,)
                    ],
                  )
                ),
              ],),
              SizedBox(
                width: 10,
              )
            ],
          )),
    );
  }
}


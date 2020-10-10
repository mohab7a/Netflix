import 'package:flutter/material.dart';
Widget episodeBlock(epTitle) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
      height: 120,
      padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    //padding: EdgeInsets.only(bottom: 5,right: 5),
                      margin: EdgeInsets.only(right: 5),

                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Vampire.jpg",),
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(Colors.black,BlendMode.softLight),
                          )
                      ),
                      width: 95,
                      height: 50,
                      child: Center(
                        child: Icon(Icons.play_arrow,size:35,color:Colors.white),
                      )
                  ),
                  SizedBox(height:2,child: Container(width:60,color:Colors.red),)
                ],
              ),
              SizedBox(width:10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    epTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '54 min',
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 13
                    ),
                  ),
                ],
              ),
              Spacer(
              ),
              IconButton(icon: Icon(Icons.download_rounded,color: Colors.white,), onPressed: (){})
            ],
          ),
          SizedBox(height:5),
          Flexible(
            child: Text(
              "The lives, loves, dangers and disasters in the town,  beneath this town as a he lives, loves, dangers and disasters in the town,  beneath this town as a te he lives, loves, dangers and disasters in the town,  beneath this town as a te  teenage girl is suddenly torn between two vampire brother"  ,style: TextStyle(
                color:Colors.white,
                fontSize: 11
            ),
            ),
          ),

        ],
      )
  );}
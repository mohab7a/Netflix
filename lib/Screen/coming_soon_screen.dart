import 'package:flutter/material.dart';
class ComingSoonScreen extends StatelessWidget {
  static String routeName = '/comingSoonScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body:
       ListView.builder(
         itemCount: 5,
         itemBuilder:(ctx,i)=> Padding(
           padding: const EdgeInsets.only(top:20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset('assets/logo.png',width: 90,height: 80,),
                    Spacer(),
                    Column(
                      children: [
                        Icon(Icons.notifications,color: Colors.white,),
                        Text(
                          'Remind Me', style: TextStyle(
                          color: Colors.grey
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Icon(Icons.share,color: Colors.white,),
                        Text(
                          'Share', style: TextStyle(
                            color: Colors.grey
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text('Season 3 Coming October 2',style: TextStyle(
                color: Colors.grey
              ),
              ),
              SizedBox(height: 15,),
              Text('SNL Arabia',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold, color: Colors.white
              ),
              ),
              SizedBox(height: 10,),
              Text('SNL Arabia NL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL ArabiaNL Arabia',style: TextStyle(
                  fontSize: 12, color: Colors.grey
              ),
                maxLines: 3,
                softWrap: true,
              ),
              SizedBox(height: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Witty',style: TextStyle(
                      fontSize: 12, color: Colors.white
                  ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius:2.5 ,
                  ),
                  Text('Witty',style: TextStyle(
                      fontSize: 12, color: Colors.white
                  ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius:2.5 ,
                  ),
                  Text('Witty',style: TextStyle(
                      fontSize: 12, color: Colors.white
                  ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius:2.5 ,
                  ),
                  Text('Witty',style: TextStyle(
                      fontSize: 12, color: Colors.white
                  ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius:2.5 ,
                  ),
                  Text('Witty',style: TextStyle(
                      fontSize: 12, color: Colors.white
                  ),
                  ),
                ],
              )
            ],
      ),
         ),
       ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  static String routeName='/SearchScreen';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             expandedHeight: 120.0,
             automaticallyImplyLeading: false,
             //floating: true,
             pinned: true,
             //snap: true,
             elevation: 0,
             backgroundColor: Colors.black,
                 flexibleSpace: FlexibleSpaceBar(
                     background:  Padding(
                                 padding: const EdgeInsets.only(top: 95,left: 8),
                                 child: Text("Popular searches",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                               ),
                 ),
             centerTitle: true,
             title: TextField(
               decoration: InputDecoration(
                 suffixIcon: Icon(Icons.mic),
                 hintText: 'Search for a show, movie,genre,etc',
                 prefixIcon: Icon(Icons.search),
                 filled: true,
                 fillColor: Colors.grey,
                 hintStyle: TextStyle(color: Colors.white38, fontSize: 18),
               ),
             ),
             // bottom: PreferredSize(child: Text('Title',
             //     style: TextStyle(
             //       color: Colors.white,
             //       fontSize: 16.0,
             //     )), preferredSize: Size.fromHeight(50.0)),

           ),
       SliverList(
         delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
           // To convert this infinite list to a list with three items,
           // uncomment the following line:
           // if (index > 3) return null;
           return Column(
                           children: [
                             InkWell(
                               onTap:(){},
                               child: ListTile(
                                 contentPadding: EdgeInsets.all(10),
                                 leading: Image.asset('assets/Intro.jpg',height: 150,width: 100,),
                                 title: Text('Amar',style: TextStyle(color: Colors.white),),
                                 trailing: IconButton(icon: Icon(Icons.play_arrow,color: Colors.white,),),
                               ),
                             ),
                             Divider(color: Colors.white38,),
                           ],
                         );
         },
           // Or, uncomment the following line:
           // childCount: 3,
         ),
       ),
         ],
       ),
     );

  }
}

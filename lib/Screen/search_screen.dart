import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  static String routeName='/SearchScreen';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black87,
       body: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             expandedHeight: 120.0,
             automaticallyImplyLeading: false,
             titleSpacing: 0,
             //floating: true,
             pinned: true,
             //snap: true,
             //toolbarHeight: 100,
             elevation: 0,
             backgroundColor: Colors.black,
                 flexibleSpace: FlexibleSpaceBar(
                   collapseMode: CollapseMode.none,
                   centerTitle: true,
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
                               child: Container(
                                 height:80,
                                 width:double.infinity,
                                 margin: EdgeInsets.only(bottom: 3),
                                 color: Colors.grey[900],
                                 child: Row(
                                   children: [

                                      Padding(
                                        padding: const EdgeInsets.only(right: 10,left: 1),
                                        child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset('assets/Intro.jpg')),
                                      ),
                                     Text('Amar',style: TextStyle(color: Colors.white),),
                                     Spacer(),
                                     IconButton(icon: Icon(Icons.play_arrow,color: Colors.white,),onPressed: (){},),
                                   ],
                                 )
                               ),
                             ),
                            // Divider(color: Colors.black12,thickness: .5,),
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

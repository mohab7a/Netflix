import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmGridCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/5.5,
      width: MediaQuery.of(context).size.width/4,
      padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage(
                    "assets/Vampire.jpg"
                )
            )
        )
    );
  }
}


// class FilmCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 10),
//                 child: Container(
//                   width: 150,
//                   height: 80,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       image: DecorationImage(
//                           image: AssetImage("assets/Vampire.jpg"),
//                           fit: BoxFit.fill
//                       )
//                   ),
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "1.pilot",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 16),
//                   ),
//                   Text(
//                     "42m",
//                     style: TextStyle(
//                         color: Colors.grey, fontSize: 16),
//                   ),
//                 ],
//               ),
//               Spacer(),
//               IconButton(
//                 icon: Icon(
//                   Icons.file_download,
//                   size: 40,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {},
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Text(
//               "The lives, loves, dangers and disasters in the town,  beneath this town as a teenage girl is suddenly torn between two vampire brothers.",
//               style: TextStyle(color: Colors.white, fontSize: 14),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


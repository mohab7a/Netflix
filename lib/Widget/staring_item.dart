import 'package:flutter/material.dart';
class StaringItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      color: Colors.black,
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(itemCount: 10,scrollDirection: Axis.horizontal,itemBuilder: (ctx,index)=>Row(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 3),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/blur.png'),
                  maxRadius: 50,
                ),
              ),
              Positioned(child: Text("Nour Omar",style: TextStyle(fontSize: 20,color: Colors.white),),bottom: 2,left: 8,)
            ],
          ),
          SizedBox(width: 10,)
        ],
      ))
    );
  }
}

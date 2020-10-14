import 'package:flutter/material.dart';
class Item extends StatelessWidget {
  Item(this.icon,this.text );
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:13),
      child: ListTile(
        leading: Icon(icon,color: Colors.blueAccent),
        title: Text(text,style: TextStyle(color: Colors.blueAccent,fontSize: 17),),
      ),
    );
  }
}

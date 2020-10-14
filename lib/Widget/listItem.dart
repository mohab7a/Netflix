import 'package:flutter/material.dart';
class ListItem extends StatelessWidget {
  ListItem(this.itemName);
  final String itemName;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Text(itemName,style: TextStyle(fontSize: 22),),
          ],
        ));
  }
}

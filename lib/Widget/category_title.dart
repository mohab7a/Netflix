import 'package:flutter/material.dart';
class CategoryTitle extends StatelessWidget {
  final String title;

  const CategoryTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0,left: 8),
      child: Text(title,style: TextStyle(color: Colors.white70,fontSize: 22,fontWeight: FontWeight.bold),),
    );
  }
}

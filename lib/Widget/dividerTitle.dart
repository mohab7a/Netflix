import 'package:flutter/material.dart';
class DividerTitle extends StatelessWidget {
  DividerTitle({this.title});
    final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 35,left: 17,bottom: 5),
      child: Text(
        title,style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      ),
    );
  }
}

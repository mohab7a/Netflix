

import 'package:flutter/material.dart';
class SwitchListTileWithoutSub extends StatelessWidget {
  SwitchListTileWithoutSub({this.title,this.switchValue,this.onchanged,this.icon});
  final bool switchValue;
  final Function onchanged;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(

      color: Colors.grey.shade900,
      margin: EdgeInsets.symmetric(vertical: 2),
      child: SwitchListTile(
        contentPadding: EdgeInsets.only(left: 17),
        secondary:Icon(icon,color: Colors.white,size: 30,) ,
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 18)),
        value: switchValue,
        activeTrackColor: Colors.blue,
        activeColor: Colors.white,
        inactiveTrackColor: Colors.grey,
        onChanged: onchanged,
      ),
    );
  }
}
class SwitchListTileWithSub extends StatelessWidget {
  SwitchListTileWithSub({this.title,this.switchValue,this.onchanged,this.icon,this.subtitle});
  final bool switchValue;
  final Function onchanged;
  final IconData icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return  Container(

      color: Colors.grey.shade900,
      margin: EdgeInsets.symmetric(vertical: 2),
      child: SwitchListTile(
        subtitle: Text(subtitle,style: TextStyle(color: Colors.grey,fontSize: 14)),
        contentPadding: EdgeInsets.only(left: 17,top: 5,bottom: 5),
        secondary:Icon(icon,color: Colors.white,size: 30,) ,
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 18)),
        value: switchValue,
        activeTrackColor: Colors.blue,
        inactiveTrackColor: Colors.grey,
        activeColor: Colors.white,
        onChanged: onchanged,
      ),
    );
  }
}

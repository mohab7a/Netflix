import 'package:flutter/material.dart';
class ListTileWithSubtitle extends StatelessWidget {
  ListTileWithSubtitle({this.icon,this.title,this.subTitle,this.rightIcon});
  final IconData icon;
  final String title;
  final String subTitle;
  final IconData rightIcon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      color: Colors.grey.shade900,
      child: ListTile(
        onTap: (){},
        contentPadding: EdgeInsets.only(left: 17),
        leading: Icon(icon,color: Colors.white,size: 30,),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 18),),
        subtitle: Text(subTitle,style: TextStyle(color: Colors.grey,fontSize: 14),),
        trailing:Padding(
          padding: const EdgeInsets.only(right: 17),
          child:IconButton(icon: Icon(rightIcon, color: Colors.white,size: 25,),onPressed: (){},),
        ),
      ),
    );
  }
}
class ListTileWithOutSubtitle extends StatelessWidget {
  ListTileWithOutSubtitle({this.icon,this.title,this.rightIcon});
  final IconData icon;
  final String title;

  final IconData rightIcon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      color: Colors.grey.shade900,
      child: ListTile(
        onTap: (){},
        contentPadding: EdgeInsets.only(left: 17),
        leading: Icon(icon,color: Colors.white,size: 30,),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,),),
        trailing:Padding(
          padding: const EdgeInsets.only(right: 17),
          child: IconButton(icon: Icon(rightIcon, color: Colors.white,size: 25,),onPressed: (){},),
        ),
      ),
    );
  }
}
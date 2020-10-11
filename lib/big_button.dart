import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  
  Button({this.color,this.icon,this.textColor,this.text,this.iconColor});
  final Color color;
  //color white
  final IconData icon;
  //Icons.play_arrow
  final Color textColor;
  final String text;
  final Color  iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          //   side: BorderSide(color: Colors.red)
        ),
        color:color,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 35,
                color: iconColor,
              ),
              Text(
               text,
                style: TextStyle(
                  color:textColor,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  static int index=0;
  Button({this.color,this.icon,this.textColor,this.text,this.iconColor});
  final Color color;
  //color white
  final IconData icon;
  //Icons.play_arrow
  final Color textColor;
  final String text;
  final Color  iconColor;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            Button.index++;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          //   side: BorderSide(color: Colors.red)
        ),
        color:widget.color,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 35,
                color: widget.iconColor,
              ),
              Text(
               widget.text,
                style: TextStyle(
                  color:widget.textColor,
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

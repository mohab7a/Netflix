import 'package:flutter/material.dart';
class CreditTextField extends StatelessWidget {
  CreditTextField({this.icon, this.textFielTitle});
  final IconData icon;
  final String textFielTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          filled: true,
          fillColor: Colors.white,
          hintText: textFielTitle,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
          alignLabelWithHint: true,
          suffixIcon: Icon(icon,color:Colors.white38,),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}

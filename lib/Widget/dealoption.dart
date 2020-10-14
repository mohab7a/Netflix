import 'package:flutter/material.dart';
class DealOption extends StatelessWidget {
  const DealOption({this.dealText,this.checkColor});
  final String dealText;
  final Color checkColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: checkColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              dealText,
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ),

        ],
      ),
    );

  }
}

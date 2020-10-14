import 'package:flutter/material.dart';

class OrderAnsNum extends StatelessWidget {
  const OrderAnsNum({this.answerTextStyle, this.answer});
  final String answer;
  final TextStyle answerTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 8),
      child: Text(answer, style: answerTextStyle),
    );
  }
}

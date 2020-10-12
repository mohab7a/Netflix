import 'package:flutter/material.dart';
class MovieViewItem extends StatelessWidget {
  const MovieViewItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2.2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset('assets/logo.png'),
      ),
      decoration: BoxDecoration(
        color: Colors.blue
        // gradient: LinearGradient(
        //     colors: [Colors.black45.withOpacity(0.7), Colors.black],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight),
      ),
    );
  }
}


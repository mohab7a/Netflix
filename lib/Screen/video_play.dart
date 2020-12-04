import 'package:flutter/material.dart';

class VideoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Vampire.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.multiply),
                )),
          ),
          Positioned(child: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);},),left: 10,top:10)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FlatButton.icon(
        onPressed: () {},
        icon: Icon(Icons.play_arrow),
        label: Text("play"),
        //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: Colors.white,
        textColor: Colors.black,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:netflix_app/Screen/smart_download.dart';

class DownloadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(
          AntDesign.exclamationcircleo,
          color: Colors.white,
          size: 22,
        ),
        title: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(SmartDownload.routeName);
          },
          child: RichText(
            text: TextSpan(text: "Smart Downloads", children: [
              TextSpan(
                  text: " ON",
                  style: TextStyle(
                    color: Colors.blue,
                  ))
            ]),
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Entypo.download,
              color: Colors.grey,
              size: 80,
            ),
            Text(
              "Movies and Tv shows that you download appear here.",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(fontSize: 25),
            ),
            RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  "Find Something to Download",
                  style: TextStyle(color: Colors.black),
                ))
          ]),
    );
  }
}

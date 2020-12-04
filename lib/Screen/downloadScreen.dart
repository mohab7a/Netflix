import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:netflix_app/Screen/navigation_bar.dart';
import 'package:netflix_app/Screen/smart_download.dart';
import 'package:netflix_app/Widget/big_button.dart';

class DownloadScreen extends StatefulWidget {
  final int index;
  const DownloadScreen(this.index);

  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  bool check=false;
  bool checkBox=false;
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
            Navigator.of(context).pushNamed(SmartDownload.routeName);
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
        actions: [
          widget.index==0?Container():checkBox==true?IconButton(icon: Icon(Icons.delete), onPressed: (){
            setState(() {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    //title: Text("Are you sure?"),
                    content: Text(
                      "Are you sure?",
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("No")),
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                                NavigationBar.routeName);
                            Button.index--;
                          },
                          child: Text("Delete")),
                    ],
                  ));
            });
          }):IconButton(icon: Icon(Icons.edit), onPressed: (){
            setState(() {
              check=!check;
            });
          })
        ],
      ),
      body:widget.index==0?Column(
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
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(NavigationBar.routeName);
                },
                color: Colors.white,
                child: Text(
                  "Find Something to Download",
                  style: TextStyle(color: Colors.black),
                ))
          ]):ListView.builder(
          itemCount: widget.index,
          itemBuilder: (ctx, i) => ListTile(
            contentPadding: EdgeInsets.all(5),
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('assets/${ Random().nextInt(10)+1}.png'),
                      fit: BoxFit.cover)),
              height: 60.0,
              width: 100.0,
            ),
            title: Text(
              "Sonic",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle:  Text(
              "oct 4",
              style: TextStyle(fontSize: 12),
            ),
            trailing: check==false?Icon(AntDesign.exclamationcircleo,):Checkbox(value: checkBox,
                onChanged: (c){setState(() {
                  checkBox=c;
            });})
          )),
    );
  }
}

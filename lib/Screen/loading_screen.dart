import 'dart:async';
import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/getstartedscreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(GetStartedScreen.routeName);
    });
    super.initState();
  }

  final spinkit = SpinKitRing(
    color: Colors.red,
    size: 50.0,
    lineWidth: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.black87,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  "assets/logo.png",
                  width: 100,
                  height: 300,
                ),
              ),
            ),
            Positioned(
              child: spinkit,
              top: MediaQuery.of(context).size.height / 1.6,
              left: MediaQuery.of(context).size.width / 2.2,
              right: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
      ),
    );
  }
}

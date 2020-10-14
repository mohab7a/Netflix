import 'package:flutter/material.dart';
import 'package:netflix_app/Widget/divider.dart';
import 'package:netflix_app/Widget/help_screen_items.dart';

class HelpScreen extends StatelessWidget {
  static String routeName = "HelpScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          width: MediaQuery.of(context).size.width / 4,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Find Help Online',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              divider(),
              Item(Icons.help, 'Help Center'),
              divider(),
              Item(Icons.payment, 'Update payment method'),
              divider(),
              Item(Icons.request_page_sharp, 'Request a title'),
              divider(),
              Item(Icons.lock, 'Update password'),
              divider(),
              Item(Icons.error, 'Cancel account'),
              divider(),
              Item(Icons.auto_fix_off, 'Fix a connection issue'),
              divider(),
              Item(Icons.fingerprint, 'Privacy'),
              divider(),
              Item(Icons.outlined_flag, 'Terms Of Use'),
              divider(),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Contact',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Text('Netflix Customer Service',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text(
                      'We,ll connect the call for free using your internet connection.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                                //title: Text("Are you sure?"),
                                title: Text(
                                  "Connect with a live support agent.",
                                  textAlign: TextAlign.center,
                                ),
                                actions: [
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("CANCEL")),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Text("CHAT NOW")),
                                ],
                              ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text('CHAT',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20))
                        ],
                      ),
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                                //title: Text("Are you sure?"),
                                title: Text(
                                  "Connect with a live support agent.",
                                  textAlign: TextAlign.center,
                                ),
                                actions: [
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("CANCEL")),
                                  FlatButton(
                                      onPressed: () {},
                                      child: Text("CALL NOW")),
                                ],
                              ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text('CALL',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20))
                        ],
                      ),
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

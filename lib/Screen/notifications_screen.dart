import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = '/NotificationScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (ctx, i) => ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage('assets/owner.png'),
                          fit: BoxFit.cover)),
                  height: 60.0,
                  width: 100.0,
                ),
                title: Text(
                  "Suggestion for You",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Container(
                  height: 31,
                  padding: EdgeInsets.all(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Black Mirror",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "oct 4",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}

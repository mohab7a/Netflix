import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/navigation_bar.dart';

class ManageProfile extends StatelessWidget {
  static String routeName = '/ManageProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Manage Profiles",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.black54,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 90,
              childAspectRatio: 1,
              crossAxisSpacing: 90,
              mainAxisSpacing: 60),
          padding: const EdgeInsets.all(60),
          itemCount: 5,
          itemBuilder: (ctx, i) => InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(NavigationBar.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage('assets/p3.png'),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black54, BlendMode.hardLight),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white54, width: 2),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}

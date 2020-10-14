import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/manage_profile.dart';
import 'package:netflix_app/Screen/navigation_bar.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/SignUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(
                Icons.mode_edit,
                color: Colors.grey,
              ),
              onPressed: (){Navigator.of(context).pushNamed(ManageProfile.routeName);})
        ],
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          width: 120,
          height: 50,
        ),
        elevation: 0,
        backgroundColor: Colors.black54,
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 90,
              childAspectRatio: 1,
              crossAxisSpacing: 90,
              mainAxisSpacing: 60),
          padding: const EdgeInsets.all(60),
          itemCount: 5,
          itemBuilder: (ctx, i) => InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(NavigationBar.routeName);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: AssetImage('assets/p3.png'),fit: BoxFit.cover)
              ),
              // height: 70.0,
              // width: 70.0,
            ),
          )),
    );
  }
}

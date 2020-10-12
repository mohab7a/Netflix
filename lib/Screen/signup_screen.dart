import 'package:flutter/material.dart';
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
              onPressed: null)
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
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          padding: const EdgeInsets.all(25),
          itemCount: 5,
          itemBuilder: (ctx, i) => InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(NavigationBar.routeName);
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Text("User",
                style: TextStyle(color: Colors.white24,fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                // gradient: LinearGradient(
                //     colors: [Colors.black45.withOpacity(0.7), Colors.red],
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )),
    );
  }
}

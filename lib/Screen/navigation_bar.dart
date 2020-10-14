import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/coming_soon_screen.dart';
import 'package:netflix_app/Screen/downloadScreen.dart';
import 'package:netflix_app/Screen/home_screen.dart';
import 'package:netflix_app/Screen/moreScreen.dart';
import 'package:netflix_app/Screen/search_screen.dart';

class NavigationBar extends StatefulWidget {
  static String routeName = '/NavigationBarScreen';
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [];
    screens = <Widget>[
      HomeScreen(),
      SearchScreen(),
      ComingSoonScreen(),
      DownloadScreen(),
      MoreScreen()
    ];

    return Scaffold(
      body: //SizedBox.expand(child: child),
          screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              title: Text(
                "Coming soon",
                textScaleFactor: .9,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download), title: Text("Download")),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("More")),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

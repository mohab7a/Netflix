import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/login_screen.dart';
import 'package:netflix_app/pagemodel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
class GetStartedScreen extends StatefulWidget {
  static String routeName='/GetStartedScreen';
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}
class _GetStartedScreenState extends State<GetStartedScreen> {
  _privacyURL() async {
    const url = 'https://help.netflix.com/legal/privacy';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _NURL() async {
    const url = 'https://www.netflix.com/signup';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  final _pageIndexNotifier = ValueNotifier<int>(0);
  List<PageModel> pages = [
    PageModel(
        'Watch on any device',
        'Stream on your phone, tablet, laptop, and TV without paying more.',
        'assets/page4.png'),
    PageModel('3, 2, 1... Download!',
        'Always have something to watch offline.',
        'assets/page2.png'),
    PageModel('No pesky contracts',
        'join today, cancel anytime.',
        'assets/page4.png'),
    PageModel(
        'Unlimited entertainment, one low price',
        'Stream and download as much as you want, no extra fees.',
        'assets/page3.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: (index) {_pageIndexNotifier.value = index; },
              itemCount:pages.length,
              itemBuilder: (ctx, i) => Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 200),
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                      image: AssetImage(pages[i].image),
                    ))),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            pages[i].title,
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 40),
                          Text(
                            pages[i].description,
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/l.png',
                  width: 100,
                  height: 120,
                ),
                FlatButton(
                  onPressed:_privacyURL,
                  child: Text(
                    'PRIVACY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text(
                    'HELP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(0, 225),
              child: Align(
                  alignment: Alignment.center,
                  child: _buildExample1(pages.length),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: RaisedButton(
                  color: Colors.red[900],
                  onPressed:_NURL,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, letterSpacing: 1.5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  PageViewIndicator _buildExample1(int length,) {
    return PageViewIndicator(
      pageIndexNotifier:_pageIndexNotifier ,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }
}

// Widget _drawcircle(Color color) {
//   return Container(
//       margin: EdgeInsets.only(right: 7),
//       width: 15,
//       decoration: BoxDecoration(shape: BoxShape.circle, color: color));
// }


 import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/chooseplan.dart';
import 'package:netflix_app/Screen/coming_soon_screen.dart';
import 'package:netflix_app/Screen/getstartedscreen.dart';
import 'package:netflix_app/Screen/loading_screen.dart';
import 'package:netflix_app/Screen/login_screen.dart';
import 'package:netflix_app/Screen/navigation_bar.dart';
import 'package:netflix_app/Screen/search_screen.dart';
import 'package:netflix_app/Screen/set_up_payment.dart';
import 'package:netflix_app/Screen/setting_Screen.dart';
import 'package:netflix_app/Screen/signup_screen.dart';
import 'Screen/chooseyourplan.dart';
import 'Screen/help_screen.dart';
import 'Screen/home_screen.dart';
import 'Screen/set_up_credit.dart';
import 'Screen/smart_download.dart';
import 'package:netflix_app/Screen/web_sign.dart';
import 'package:netflix_app/Screen/chooseplan.dart';
import 'package:netflix_app/Screen/web_sign.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: LoadingScreen(),
    title: 'Netflix',
    routes: {
      LoginScreen.routeName:(ctx)=>LoginScreen(),
      HomeScreen.routeName:(ctx)=>HomeScreen(),
      SignUpScreen.routeName:(ctx)=>SignUpScreen(),
      SearchScreen.routeName:(ctx)=>SearchScreen(),
      ComingSoonScreen.routeName:(ctx)=>ComingSoonScreen(),
      GetStartedScreen.routeName:(ctx)=>GetStartedScreen(),
      NavigationBar.routeName:(ctx)=>NavigationBar(),
      SettingScreen.routeName:(ctx)=>SettingScreen(),
      SmartDownload.routeName:(ctx)=>SmartDownload(),
      ChooseYourPlan.routeName:(ctx)=>ChooseYourPlan(),
      ChoosePlan.routeName:(ctx)=>ChoosePlan(),
      WebSign.routeName:(ctx)=>WebSign(),
      HelpScreen.routeName:(ctx)=>HelpScreen(),
      SetUpPayment.routeName:(ctx)=>SetUpPayment(),
      SetUpCredit.routeName:(ctx)=>SetUpCredit(),



    },

  ));
}
import 'package:flutter/material.dart';
import 'package:netflix_app/switchlistTile.dart';

import '../ListTile.dart';
import '../dividerTitle.dart';

class SettingScreen extends StatelessWidget {
  static String routeName= "SettingScreen";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SafeArea(


        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title:Text("App Setting ",style: TextStyle(color: Colors.white,fontSize: 25),),
            leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,size: 25,),onPressed: (){Navigator.pop(context);},),
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body:SettingScreenBody() ,
        ),
      ),
    ) ;

  }
}
class SettingScreenBody extends StatefulWidget {
  @override
  _SettingScreenBodyState createState() => _SettingScreenBodyState();
}

class _SettingScreenBodyState extends State<SettingScreenBody> {
  bool switch1=false;
  bool wifiswitch=false;
  bool smartDownloadSwitch=false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DividerTitle(
          title: "Video Playback",
        ),
        ListTileWithSubtitle(
          title: "Cellular Data Usage",
          subTitle: "Automative",
          icon: Icons.network_cell,

        ),
        DividerTitle(
          title: "Notification",
        ),
        SwitchListTileWithoutSub(
          icon: Icons.notifications,
          title: "Allow Notifications",
          switchValue: switch1,
          onchanged: (value){
            setState(() {
              switch1=value;
            });
          },
        ),

        DividerTitle(
          title: "Downloads",
        ),
        SwitchListTileWithoutSub(
          icon: Icons.wifi,
          title: "Wi-fi Only",
          switchValue:wifiswitch ,
          onchanged: (value){
            setState(() {
              wifiswitch=value;
            });
          },
        ),
        SwitchListTileWithSub(
          icon: Icons.file_download,
          title: "Smart Download",
          subtitle:"Completed episodes will be deleted and replaced with the next episodes,only on wi-fi" ,
          switchValue: smartDownloadSwitch,
          onchanged: (value){
            setState(() {
              smartDownloadSwitch=value;
            });
          },
        ),

        ListTileWithSubtitle(
          title: "Download Video Quality",
          subTitle: "Standard",
          icon: Icons.video_library,
        ),
        ListTileWithSubtitle(
          title: "Download Location",
          subTitle: "Internal Storage",
          icon: Icons.storage,
        ),
        DividerTitle(title: "About",),
        ListTileWithSubtitle
          (
          icon: Icons.phone_android,
          title: "Device",
          subTitle: " Version:7.73.1 build 15(code 35102),os API\n 29,arm64-v8a\n Model:CPH2059 \n PL:0 \n CBSPV:Q6125-17995-1\n Build:CPH2059-11-A.41",
        ),
        ListTileWithSubtitle(
          icon:Icons.person,
          title: "Account",
          subTitle: "Email:khaledagwa88@gmail.com",
          rightIcon: Icons.open_in_browser,
        ),
        DividerTitle(title:"Diagnostics"),
        ListTileWithOutSubtitle(
          icon:Icons.portable_wifi_off,
          title: "Check Network",
        ),
        ListTileWithOutSubtitle(
          icon: Icons.repeat,
          title: "Playback",
        ),
        ListTileWithOutSubtitle(
          icon:Icons.shutter_speed,
          title: "Internet Speed Test",
          rightIcon: Icons.open_in_browser,
        ),
        DividerTitle(title: "Legal",),
        ListTileWithOutSubtitle(
          icon: Icons.save,
          title: "Open Source License",
        ),
        ListTileWithOutSubtitle(
          icon: Icons.save,
          title: "Privacy",
          rightIcon: Icons.open_in_browser,
        ),
        ListTileWithOutSubtitle(
          icon: Icons.save,
          title: "Cookie Preferences",
          rightIcon: Icons.open_in_browser,
        ),
        ListTileWithOutSubtitle(
          icon: Icons.save,
          title: "Terms of Use",
          rightIcon: Icons.open_in_browser,
        ),
      ],
    );
  }
}




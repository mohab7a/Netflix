import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/signup_screen.dart';
import 'package:url_launcher/url_launcher.dart';
class LoginScreen extends StatefulWidget {
  static String routeName = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _privacyURL() async {
    const url = 'https://help.netflix.com/legal/privacy';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  final _emailFocusNode = FocusScopeNode();

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.of(context).pop();
        },
        ),
        title: Image.asset(
          'assets/logo.png',
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height,
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                      child: ListView(
                    //mainAxisAlignment:MainAxisAlignment.center,
                    key: _form,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          filled: true,
                          fillColor: Colors.grey,
                           labelText: 'Email or phone number',
                          labelStyle: TextStyle(color: Colors.white54, fontSize: 25,),
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(1),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_emailFocusNode);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(25),
                          filled: true,
                          fillColor: Colors.grey,
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white54, fontSize: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_emailFocusNode);
                        },
                        focusNode: _emailFocusNode,
                      ),
                    ],
                  )),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignUpScreen.routeName);
                  },
                  child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 4, color: Colors.grey)),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ))),
              FlatButton(
                padding: EdgeInsets.all(25),
                  onPressed:_privacyURL,
                  child: Text(
                    "Need Help?",
                    style: TextStyle(color: Colors.grey,fontSize: 18),
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "New to Netflix? Sign up now.",
                    style: TextStyle(color: Colors.grey[400],fontSize: 18,fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Text(
                  "Sign in is protected by Google reCAPTCHA to in ensure ",
                  style: TextStyle(color: Colors.grey,fontSize: 12),
                ),
              ),
              Text(
                " you're not a bot.",
                style: TextStyle(color: Colors.grey,fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

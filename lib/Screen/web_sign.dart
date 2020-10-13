import 'package:flutter/material.dart';

import 'help_screen.dart';
import 'login_screen.dart';
class WebSign extends StatefulWidget {
  static String routeName= "WebSign";
  @override
  _WebSignState createState() => _WebSignState();
}

class _WebSignState extends State<WebSign> {
  final _form = GlobalKey<FormState>();
  final _emailFocusNode = FocusScopeNode();
  bool _checkValue=false;


  static const kActionAppBarStyle =
  TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Image.asset(
        "assets/logo.png",
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height,
      ),
      actions: [
        Center(
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(HelpScreen.routeName);
              },
              child: Text(
                "HELP",
                style: kActionAppBarStyle,
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(child: InkWell(
              onTap: (){    Navigator.of(context).pushNamed(LoginScreen.routeName);},
              child: Text("SIGN IN", style: kActionAppBarStyle))),
        )
      ],
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: RichText(
            text: TextSpan(
                text: "STEP",
                style: TextStyle(color: Colors.grey.shade700),
                children: [
                  TextSpan(
                      text: " 2 ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "OF",
                      style: TextStyle(color: Colors.grey.shade700)),
                  TextSpan(
                      text: " 3",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                ])),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Sign up to start your\nmembership.",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Just two more steps and you're\ndone! We hate paperwork,too",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Create your account.",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Form(
                    child: Column(
                      //mainAxisAlignment:MainAxisAlignment.center,
                      key: _form,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 20,),
                            alignLabelWithHint: true,
                            focusedBorder: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1
                              ),
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
                            contentPadding: EdgeInsets.all(16),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                            focusedBorder: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 1
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1
                              ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(

                        width: 20,
                        height: 20,
                          decoration: BoxDecoration(
                            border:Border.all(
                              color: Colors.black
                            )
                          ),
                          child: Checkbox(

                              activeColor: Colors.blue,
                              value: _checkValue, onChanged: (value){
                            setState(() {
                              _checkValue=value;
                            });
                          }),
                        ),
                      ),
                      Text(
                        "Please do not email me Netflix special\noffers",
                        style: TextStyle(color: Colors.grey.shade700, fontSize: MediaQuery.of(context).size.width/25,
                      ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FlatButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){}, child: Center(child: Text("CONTINUE",style: TextStyle(fontSize: 20),)),color: Colors.red,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

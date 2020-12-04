import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/help_screen.dart';
import 'package:netflix_app/Screen/home_screen.dart';
import 'package:netflix_app/Screen/login_screen.dart';
import 'package:netflix_app/Screen/navigation_bar.dart';
import 'package:netflix_app/Screen/signup_screen.dart';
import 'package:netflix_app/Widget/credit_text_field.dart';

class SetUpCredit extends StatefulWidget {
  static String routeName = "SetUpCredit";
  @override
  _SetUpCreditState createState() => _SetUpCreditState();
}

class _SetUpCreditState extends State<SetUpCredit> {
  bool _checkValue = false;
  static const kActionAppBarStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  final _form = GlobalKey<FormState>();
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return HelpScreen();
              }));
            },
            child: Text(
              "HELP",
              style: kActionAppBarStyle,
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
                child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                                title: Text(
                                  "Are you sure?",
                                  textAlign: TextAlign.center,
                                ),
                                actions: [
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("No")),
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (ctx) {
                                          return LoginScreen();
                                        }));
                                      },
                                      child: Text("Sign Out")),
                                ],
                              ));
                    },
                    child: Text("SIGN OUT", style: kActionAppBarStyle))),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RichText(
                  text: TextSpan(
                      text: "STEP",
                      style: TextStyle(color: Colors.grey.shade700),
                      children: [
                    TextSpan(
                        text: " 3 ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "OF",
                        style: TextStyle(color: Colors.grey.shade700)),
                    TextSpan(
                        text: " 3",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Set up your credit or debit\ncard.",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/visa.svg",
                  width: MediaQuery.of(context).size.width / 8,
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  "assets/mastercard.svg",
                  width: MediaQuery.of(context).size.width / 8,
                )
              ],
            ),
            Form(
              key: _form,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    CreditTextField(
                      textFielTitle: "First Name",
                    ),
                    CreditTextField(
                      textFielTitle: "Last Name",
                    ),
                    CreditTextField(
                      textFielTitle: "Card Number",
                    ),
                    CreditTextField(
                      textFielTitle: "Expiration Date (MM/YY)",
                    ),
                    CreditTextField(
                      textFielTitle: "Security Code (CVV)",
                      icon: Icons.security,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "EGP200/mo.",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "Premium Plan",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 20,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Change",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RichText(
                  text: TextSpan(
                      text: "By checking the box below, you agree to the our",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: Colors.grey.shade700),
                      children: [
                    TextSpan(
                      text: " the Terms of Use and Privacy statement ",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 24,
                          color: Colors.blue),
                    ),
                    TextSpan(
                      text:
                          ",and that you are over 18 years old. Netflix will automatically proceed with your membership and will charge a monthly membership fee (currently \$ 200)"
                          "on the payment method until you cancel the membership. You can cancel at any time to avoid deducting any future. ",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: Colors.grey.shade700),
                    ),
                  ])),
            ),
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
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )),
                      child: Checkbox(
                          activeColor: Colors.blue,
                          value: _checkValue,
                          onChanged: (value) {
                            setState(() {
                              _checkValue = value;
                            });
                          }),
                    ),
                  ),
                  Text(
                    "I agree",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: MediaQuery.of(context).size.width / 25,
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return NavigationBar();
                  }));
                },
                child: Center(
                    child: Text(
                  "START MEMBERSHIP",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/signup_screen.dart';
class EditProfile extends StatefulWidget {
  static int index=5;

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Edit Profile",style: TextStyle(fontSize: 20),),
        actions: [
          FlatButton(onPressed: (){
            setState(() {
              EditProfile.index++;
            });
            Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
          }, child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold),),textColor: Colors.green,)
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 130,
                    height: 130,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage('assets/p3.png'),
                              fit: BoxFit.cover)),
                     // margin: EdgeInsets.only(right: 5.0),
                      height: 120.0,
                      width: 120.0,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.edit_outlined,color: Colors.black,),),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 60),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nour Omar",
                    fillColor: Colors.grey[800],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(5) ,
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      floatingLabelBehavior:FloatingLabelBehavior.never,
                      labelText: "ALL MATURITY RATINGS",
                      labelStyle:TextStyle(color: Colors.white,),
                      fillColor: Colors.grey[800],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(5) ,
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Show titles of all maturity ratings for this profile."),
              SizedBox(height: 15,),
              RichText(
                text: TextSpan(text: "Visit",style: TextStyle(
    color: Colors.grey,
    ), children: [
                  TextSpan(
                      text: " Account Settings",
                      style: TextStyle(
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: " to change.",
                      style: TextStyle(
                        color: Colors.grey,
                      ))
                ]),
              ),
              SizedBox(height: 120,),
              FlatButton.icon(onPressed:(){setState(() {
                EditProfile.index--;
              });
              Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
              }, icon: Icon(Icons.delete),label: Text("Delete Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            ],
          ),
        ),
      ),
    );
  }
}

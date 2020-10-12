import 'package:flutter/material.dart';
class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color:Colors.black,size: 30,),
          onPressed: (){},
        ),
        title: Image.asset('assets/logo.png',width:125 ,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child:Text('Find Help Online',style:TextStyle(
                  color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10),
              divider(),
              Item(Icons.arrow_forward,'Help Center'),
              divider(),
              Item(Icons.payment,'Update payment method'),
              divider(),
              Item(Icons.arrow_forward,'Request a title'),
              divider(),
              Item(Icons.lock,'Update password'),
              divider(),
              Item(Icons.error,'Cancel account'),
              divider(),
              Item(Icons.arrow_forward,'Fix a connection issue'),
              divider(),
              Item(Icons.fingerprint,'Privacy'),
              divider(),
              Item(Icons.outlined_flag,'Terms Of Use'),
              divider(),
              SizedBox(height: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Contact',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold)),
                  Text('Netflix Customer Service',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('We,ll connect the call for free using your internet connection.',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 17 ,)),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,color: Colors.white,),
                        SizedBox(width: 2,),
                        Text('CHAT',style: TextStyle(color: Colors.white,fontSize: 20))
                      ],
                    ),
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call,color: Colors.white,),
                        SizedBox(width: 2,),
                        Text('CALL',style: TextStyle(color: Colors.white,fontSize: 20))
                      ],
                    ),
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  )
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
Widget divider(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 1,
      color: Colors.grey[300],
    ),
  );
}

class Item extends StatelessWidget {
  Item(this.icon,this.text );
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:13),
      child: ListTile(
        leading: Icon(icon,color: Colors.blueAccent),
        title: Text(text,style: TextStyle(color: Colors.blueAccent,fontSize: 17),),
      ),
    );
  }
}

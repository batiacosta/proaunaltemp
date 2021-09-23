import 'package:acin/screens/login_screen.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'package:firebase_core/firebase_core.dart';

import 'package:shared_preferences/shared_preferences.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();//Firebase
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.white,
            fontFamily: 'Gotham'
        ),

        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Primera();
            }
        ),
        routes: <String,WidgetBuilder>{
          "/LoginScreen":(BuildContext context)=>Login(),
          "/MainMenu":(BuildContext context)=>MainMenu(),
        },
      )
  );
}


class Primera extends StatefulWidget{
  SplashScreen createState()=>SplashScreen();
}

class SplashScreen extends State<Primera>{

  void initState(){
    super.initState();
    vamonos(context);
  }

  Widget build(context){
    return boxBackgroundImage();
  }
  Widget boxBackgroundImage() {
    return new Scaffold(

        resizeToAvoidBottomInset: false,
        body: new DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            //color: Colors.red,
            image: DecorationImage(
                image: AssetImage('assets/splashS.png'),
                fit: BoxFit.cover),
          ),
          child:ListView( //  Form
            children: <Widget>[
            ],
          ),
        )
      //Rest of the widgets go here..
    );
  }

  void vamonos(BuildContext context) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int intValue= prefs.getInt('estado') ?? 0;
    if(intValue==0) {
      Navigator.pushNamedAndRemoveUntil(context, '/LoginScreen',(Route<dynamic> route)=>false);
    }
    else if(intValue==1){
      Navigator.pushNamedAndRemoveUntil(context, '/MainMenu',(Route<dynamic> route)=>false);
    }
  }
  getValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  }
}


class SecondPage extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.favorite, color: Colors.amberAccent,),iconSize: 70.0, onPressed: null),
              new Text('SecondPage')
            ],
          ),
        ),
      ),
    );
  }
}



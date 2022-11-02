import 'package:acin/screens/acerca.dart';
import 'package:acin/screens/bibliografia.dart';
import 'package:acin/screens/curso.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class MenuDesplegado extends StatefulWidget {
  const MenuDesplegado({Key key}) : super(key: key);

  @override
  _MenuDesplegadoState createState() => _MenuDesplegadoState();
}

class _MenuDesplegadoState extends State<MenuDesplegado> {
  Future <void> _launched;

  //String _urlMail = "mailto:antimicrobianos.app@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.1,
                bottom: MediaQuery.of(context).size.height*0.05,
              ),
              width: double.infinity,
              child: Center(
                child: Image(
                    image: AssetImage("assets/EncabezadoMenu.png"),
                  width: MediaQuery.of(context).size.height*0.25,
                ),
              ),
            ),

            buildMenuItem(text: "Home", imagen: "assets/i1.png", onClicked:()=>selectedItem(context, 0)),
            buildMenuItem(text: "Acerca de", imagen: "assets/i2.png", onClicked:()=>selectedItem(context, 1)),
            buildMenuItem(text: "Bibliografía", imagen: "assets/i4.png", onClicked:()=>selectedItem(context, 3)),
            buildMenuItem(text: "Curso virtual", imagen: "assets/i5.png", onClicked:()=>selectedItem(context, 4)),
            buildMenuItem(text: "Contáctenos", imagen: "assets/i3.png", onClicked:()=>selectedItem(context, 2)),
          ],
        ),
      ),
    );
  }
  Widget buildMenuItem({
    String text,   String imagen,  VoidCallback onClicked
}){
    final color = Colors.red;
    return new ListTile(
      leading: Image.asset(
          imagen,
        height: 40,
      ),
      title: Container(
        padding: EdgeInsets.only(bottom: 5, top: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide( color: Color(0xffAAACAE)),
          ),
        ),
        width: double.infinity,
          child: Text(text, style: _estiloLetra1(context),)
      ),
      onTap: onClicked,
    );
  }
  _estiloLetra1(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: 20,
      color: Colors.black,
      //fontWeight: FontWeight.bold,
    );
  }
  void selectedItem(context, int n){
    switch(n){
      case 0:
        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => MainMenu()),
              (Route<dynamic> route) => false,
        );
        break;
      case 1:
        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => AcercaDe()),
              (Route<dynamic> route) => false,
        );
        break;
      case 2:
        _launchURL('mailto:antimicrobianos.app@gmail.com');
        break;
      case 3:
        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => Bibliografia()),
              (Route<dynamic> route) => false,
        );
        break;case 4:
      Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => Curso()),
            (Route<dynamic> route) => false,
      );
      break;

    }
  }
  void _launchURL(String urlMia) async {
    Uri uri = new Uri(path: urlMia,);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri);
    }
  }
  void _launchURL2() async {
    String urlMia = 'https://www.coursera.org/learn/antibioticos-uso-prudente';
    if(await canLaunch(urlMia)){
      await launch(urlMia);
    }
  }
}

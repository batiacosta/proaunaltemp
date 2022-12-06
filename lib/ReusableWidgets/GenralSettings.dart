import 'package:flutter/material.dart';
class GeneralSettings{

  String chulo = "✓";
  String triangulito = "➢";
  String rombo = "❖";
  String punto = "•";
  String guion = "-";

  double radiousValue = 10;
  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08
    );
  }
  margenDelgado(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.03,
        left: MediaQuery.of(context).size.width*0.03
    );
  }
  margenNormalEspaciado(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08,
      top: 10,
      bottom: 10
    );
  }
  margenDerecho(context){
    return EdgeInsets.only(right: MediaQuery.of(context).size.width*0.08,);
  }
  margenIzquierdo(context){
    return EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08,);
  }

  TextStyle h1Bold(context, Color color) => TextStyle(
    fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.07,
    color: color,
    fontWeight: FontWeight.bold
  );
  TextStyle h1Regular(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.07,
      color: color,
  );

  TextStyle h2Bold(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.06,
      color: color,
      fontWeight: FontWeight.bold
  );
  TextStyle h2Regular(context, Color color) => TextStyle(
    fontFamily: 'Ancizar',
    fontSize: MediaQuery.of(context).size.width * 0.06,
    color: color,
  );
  TextStyle regular(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.048,
      color: color,
  );
  TextStyle regularBold(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: color,
      fontWeight: FontWeight.bold
  );
  TextStyle regularItalic(context, Color color) => TextStyle(
    fontFamily: 'Ancizar',
    fontSize: MediaQuery.of(context).size.width * 0.05,
    color: color,
    fontStyle: FontStyle.italic
  );
  TextStyle small(context, Color color) => TextStyle(
    fontFamily: 'Ancizar',
    fontSize: MediaQuery.of(context).size.width * 0.04,
    color: color,
  );
  TextStyle smallBold(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.04,
      color: color,
      fontWeight: FontWeight.bold
  );
  TextStyle smallItalic(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.04,
      color: color,
      fontStyle: FontStyle.italic
  );
  Container espacio()=> Container(
    height: 10,
  );
  Container espacioPequeno()=> Container(
    height: 5,
  );
}
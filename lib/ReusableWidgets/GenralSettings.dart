import 'package:flutter/material.dart';
class GeneralSettings{
  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08
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
  TextStyle regular(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: color,
  );
  TextStyle regularBold(context, Color color) => TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: color,
      fontWeight: FontWeight.bold
  );
  Container espacio()=> Container(
    height: 10,
  );
}
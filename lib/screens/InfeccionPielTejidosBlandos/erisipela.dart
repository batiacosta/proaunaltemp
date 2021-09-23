import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/verImagen.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class Erisipela extends StatefulWidget {
  const Erisipela({Key key}) : super(key: key);

  @override
  _ErisipelaState createState() => _ErisipelaState();
}

class _ErisipelaState extends State<Erisipela> {
  @override
  Color colorClaro = new Color(0xffFFEDE0);
  Color colorMedio = new Color(0xffF37036);
  Color colorOscuro = new Color(0xffF37036);
  Color colorMuyOscuro = new Color(0xffF58735);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/ProfilaxisQ":(BuildContext context)=>TejidosMenu(),
        },
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
              return new Scaffold(
                  drawer: MenuDesplegado(),
                  appBar: BarraSuperior().Barra(context, false),
                  bottomNavigationBar: BarraInferior(),
                  backgroundColor: colorMedio,
                  resizeToAvoidBottomInset: false,
                  body: SafeArea(
                    child: cuerpo(context),
                  )
              );
            }
        )
    );
  }

  Widget cuerpo(context){
    return new Container(
      color: colorClaro,
      child: ListView(
        children: [
          Headers(colorMedio, "Infección de piel y tejidos blandos", "assets/InfeccionPielTejidosBlandos/tejidosTitulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                ImagenEncabezadoSeccion("assets/InfeccionPielTejidosBlandos/tejidos_b1.png"),
                divisorTitulado(context, "Erisipela / Celulitis"),
                Container(height: MediaQuery.of(context).size.height*0.005,),
                divisorTituladoCentrado(context, "DIAGNÓSTICO"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Se recomienda: \n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En pacientes que se encuentren en quimioterapia activa, tengan neutropenia, inmunodeficiencia celular severa, o por interés epidemiológico se recomienda realizar hemocultivos, aspirados, o biopsia de piel.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),


                divisorTituladoCentrado(context, "TRATAMIENTO"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Se recomienda: \n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Para el manejo vía oral de erisipela o celulitis: \n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Primera línea: ",
                            style: _estiloLetraColorMedio(context),
                          ),TextSpan(
                            text: "cefalexina.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Como alternativa:\n   ",
                            style: _estiloLetraColorMedio(context),
                          ),TextSpan(
                            text: "clindamicina, amoxicilina/clavulanato o\n   trimetoprim/sulfametoxazol.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),


                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          chulo(context),
                          TextSpan(
                            text: "Para el manejo vía intravenosa de erisipela o celulitis:\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Primera línea: ",
                            style: _estiloLetraColorMedio(context),
                          ),TextSpan(
                            text: "oxacilina, cefazolina,\n   ampicilina sulbactam o clindamicina\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Como alternativa: ",
                            style: _estiloLetraColorMedio(context),
                          ),TextSpan(
                            text: "amoxicilina/\n   clavulanato.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        children: [

                        ]
                    ),
                  ),
                ),


                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          chulo(context),
                          TextSpan(
                            text: "Para pacientes en los que la celulitis se asocia con trauma penetrante, infección previa o colonización por ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "SAMR, ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "uso de drogas intravenosas, absceso o inmunosupresión se debe administrar un antimicrobiano efectivo contra ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "SAMR ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "y ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "estreptococos.\n  ",
                            style: _estiloLetra1Italic(context),
                          ),
                        ]
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [

                          chulo(context),
                          TextSpan(
                            text: "En casos de erisipela o celulitis duración del tratamiento antibiótico de 5 días.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),


                VerImagen("assets/InfeccionPielTejidosBlandos/tejidosTabla2.png", 1, "t"),




                Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),
          //LogoFooter(2, colorMedio),
        ],
      ),
    );
  }

  Widget menuDiagnostico(context, String titulo){
    return new Container(
      color: colorOscuro,
      child: Column(
        children: [
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: titulo,
                        style: _estiloLetraTitulo(context)
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget divisorTitulado(context, String texto){
    return new Container(
      color: colorMedio,
      width: double.infinity,
      padding: paddingNormal(),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              TextSpan(
                text: texto,
                style: _estiloLetraWhite(context),
              ),
            ]
        ),
      ),
    );
  }

  Widget divisorTituladoCentrado(context, String texto){
    return new Container(
      color: colorMuyOscuro,
      width: double.infinity,
      padding: paddingNormal(),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              TextSpan(
                text: texto,
                style: _estiloLetraWhite(context),
              ),
            ]
        ),
      ),
    );
  }



  chulo(context){
    return TextSpan(
      text: "✓  ",
      style: _estiloLetraColorMedio(context),
    );
  }
  triangulito(context){
    return TextSpan(
      text: "➢  ",
      style: _estiloLetraColorMedio(context),
    );
  }
  rombo(context){
    return  TextSpan(
      text: "❖  ",
      style: _estiloLetraColorMedio(context),
    );
  }


  _estiloLetra1(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorDark,
    );
  }
  _estiloLetra1Bold(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorDark,
        fontWeight: FontWeight.bold
    );
  }
  _estiloLetra1Italic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorDark,
        fontStyle: FontStyle.italic
    );
  }
  _estiloLetraChiquita(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.03,
      color: colorDark,
    );
  }
  _estiloLetraWhite(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: Colors.white,
    );
  }
  _estiloLetraColorMedio(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorMedio,
    );
  }
  _estiloLetraColorMedioBold(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorMedio,
        fontWeight: FontWeight.bold
    );
  }
  _estiloLetraTitulo(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.07,
        color: Colors.white);
  }

  paddingNormal(){
    return EdgeInsets.only(
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
      top: MediaQuery.of(context).size.width * 0.015,
      bottom: MediaQuery.of(context).size.width * 0.015,
    );
  }
  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08
    );
  }
}

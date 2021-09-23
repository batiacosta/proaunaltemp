import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/estado_de_salud.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/grado_contaminacion.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/indice_riesgo_PQ.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/profilaxis_quirurgica_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class FactoresRiesgoISQProfilaxisQuirurgica extends StatefulWidget {
  const FactoresRiesgoISQProfilaxisQuirurgica({Key key}) : super(key: key);

  @override
  _FactoresRiesgoISQProfilaxisQuirurgicaState createState() => _FactoresRiesgoISQProfilaxisQuirurgicaState();
}

class _FactoresRiesgoISQProfilaxisQuirurgicaState extends State<FactoresRiesgoISQProfilaxisQuirurgica> {
  @override
  Color colorClaro = new Color(0xffFDE9E6);
  Color colorMedio = new Color(0xffEE3338);
  Color colorOscuro = new Color(0xffEE3338);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/ProfilaxisQ":(BuildContext context)=>ProfilaxisQuirurgicaMenu(),
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
          Headers(colorMedio, "Profilaxis quirúrgica", "assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                ImagenEncabezadoSeccion("assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b2.png"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Numerosos factores influyen en la probabilidad de desarrollar una ISQ, dentro de los cuales se encuentran el grado de contaminación microbiana del sitio operatorio, el estado de salud general del paciente y la duración del procedimiento quirúrgico.\n\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xffEC5F56)),
                    ),
                    child:RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Grado de contaminación microbiana del sitio operatorio: Clasificación de las heridas quirúrgicas",
                                style: _estiloLetraWhite(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GradoContaminacionProfilaxisQuirurgica()),
                      );
                    },
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height*0.015,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xffEF7765)),
                    ),
                    child:RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Estado de salud general del paciente: Sistema de clasificación del estado físico de la American Society of Anesthesiologists (ASA):",
                                style: _estiloLetraWhite(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EstadoSaludProfilaxisQuirurgica()),
                      );
                    },
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height*0.015,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xffF7A188)),
                    ),
                    child:RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Índice de riesgo del National Nosocomial Infection Surveillance (NNIS)",
                                style: _estiloLetraWhite(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IndiceRiesgoProfilaxisQuirurgica()),
                      );
                    },
                  ),
                ),

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
        textAlign: TextAlign.justify,
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

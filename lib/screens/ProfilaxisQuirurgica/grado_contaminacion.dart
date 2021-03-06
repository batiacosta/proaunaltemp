import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/encabezadoColor.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/factores_riesgo_isq.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class GradoContaminacionProfilaxisQuirurgica extends StatefulWidget {
  const GradoContaminacionProfilaxisQuirurgica({Key key}) : super(key: key);

  @override
  _GradoContaminacionProfilaxisQuirurgicaState createState() => _GradoContaminacionProfilaxisQuirurgicaState();
}

class _GradoContaminacionProfilaxisQuirurgicaState extends State<GradoContaminacionProfilaxisQuirurgica> {
  @override
  Color colorClaro = new Color(0xffFDE9E6);
  Color colorMedio = new Color(0xffEC5F56);
  Color colorOscuro = new Color(0xffEC5F56);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/ProfilaxisQ":(BuildContext context)=>FactoresRiesgoISQProfilaxisQuirurgica(),
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
          Headers(colorMedio, "Profilaxis quir??rgica", "assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                ImagenEncabezadoSeccion("assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b2.png"),
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
                                text: "Grado de contaminaci??n microbiana del sitio operatorio: Clasificaci??n de las heridas quir??rgicas",
                                style: _estiloLetraWhite(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                EncabezadoConColor(
                    Color(0xffEC5F56),
                    "Limpia",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Herida quir??rgica no infectada en la cual no se evidencia inflamaci??n, en un procedimiento sin disrupci??n de la t??cnica est??ril y durante el cual no hay ingreso al tracto respiratorio, digestivo o genitourinario.",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEC5F56),
                    "Limpia - contaminada",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Herida quir??rgica con ingreso al tracto respiratorio, gastrointestinal o genitourinario bajo condiciones controladas y sin contaminaci??n inusual. Espec??ficamente las cirug??as que involucran tracto biliar, ap??ndice, vagina y orofaringe son incluidas en esta categor??a, siempre y cuando no haya evidencia de infecci??n o disrupci??n de la t??cnica est??ril.",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEC5F56),
                    "Contaminada",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Herida quir??rgica en la que hay disrupci??n importante en la t??cnica est??ril o salida de contenido del tracto gastrointestinal, o una incisi??n en la que se encuentra inflamaci??n aguda no purulenta. Las heridas traum??ticas abiertas recientes tambi??n entran en esta categor??a.",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEC5F56),
                    "Sucia - infectada",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Herida quir??rgica en la que hay perforaci??n de v??sceras o se encuentra inflamaci??n purulenta o tejido desvitalizado. Las heridas traum??ticas con retraso en el tratamiento y aquellas en las que hay infecci??n cl??nica previa tambi??n entran en esta categor??a.",
                    colorDark
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
      text: "???  ",
      style: _estiloLetraColorMedio(context),
    );
  }
  triangulito(context){
    return TextSpan(
      text: "???  ",
      style: _estiloLetraColorMedio(context),
    );
  }
  rombo(context){
    return  TextSpan(
      text: "???  ",
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

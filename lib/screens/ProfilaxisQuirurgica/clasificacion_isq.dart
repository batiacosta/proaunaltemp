import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/profilaxis_quirurgica_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class ClasificacionISQProfilaxisQuirurgica extends StatefulWidget {
  const ClasificacionISQProfilaxisQuirurgica({Key key}) : super(key: key);

  @override
  _ClasificacionISQProfilaxisQuirurgicaState createState() => _ClasificacionISQProfilaxisQuirurgicaState();
}

class _ClasificacionISQProfilaxisQuirurgicaState extends State<ClasificacionISQProfilaxisQuirurgica> {
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
          Headers(colorMedio, "Profilaxis quir??rgica", "assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                ImagenEncabezadoSeccion("assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b1.png"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          rombo(context),
                          TextSpan(
                            text: "Seg??n los tejidos comprometidos la ISQ se puede clasificar como:\n\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Superficial: ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Infecci??n que involucra solo\n    la piel o el tejido subcut??neo de la\n    incisi??n.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Profunda: ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Infecci??n que involucra\n    tejidos blandos profundos de la incisi??n\n    (Ejem: capas de fascia y m??sculo)\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "??rgano / Espacio: ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Infecci??n que\n    involucra cualquier parte de la anatom??a\n    (por ejemplo, ??rganos o espacios), que\n    no sea la incisi??n, abierta o manipulada\n    durante el procedimiento quir??rgico.\n",
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
                          rombo(context),
                          TextSpan(
                            text: "Las ISQ superficial y profunda, se pueden clasificar como:\n\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Primaria: ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Infecci??n que se identifica en la\n    incisi??n primaria en un paciente que ha\n    tenido un procedimiento quir??rgico con\n    una o m??s incisiones (por ejemplo,\n    incisi??n de ces??rea o incisi??n en el\n    pecho para bypass de arteria coronaria).\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Secundaria: ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Infecci??n que se identifica\n    en la incisi??n secundaria en un paciente\n    que ha tenido una operaci??n con m??s de\n    una incisi??n (por ejemplo, incisi??n en el\n    sitio donante para bypass de arteria\n    coronaria).\n",
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
                          rombo(context),
                          TextSpan(
                            text: "Algunos sitios espec??ficos de ISQ ??rgano/espacio son:\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Meningitis         \n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Endocarditis\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Mediastinitis\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Infecci??n de la articulaci??n periprot??sica\n",
                            style: _estiloLetra1(context),
                          ),

                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Osteomielitis\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Endometritis\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),


                Container(height: MediaQuery.of(context).size.height*0.1,),
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

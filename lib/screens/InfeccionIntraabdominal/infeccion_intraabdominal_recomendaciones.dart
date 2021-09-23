import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class IntraabdominalRecomendaciones extends StatefulWidget {
  const IntraabdominalRecomendaciones({Key key}) : super(key: key);

  @override
  _IntraabdominalRecomendacionesState createState() => _IntraabdominalRecomendacionesState();
}

class _IntraabdominalRecomendacionesState extends State<IntraabdominalRecomendaciones> {
  @override
  Color colorClaro = new Color(0xffDEF2F4);
  Color colorMedio = new Color(0xff5DC7D1);
  Color colorOscuro = new Color(0xffF37036);
  Color colorMuyOscuro = new Color(0xffF0737B);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/ProfilaxisQ":(BuildContext context)=>InfeccionIntraAbdominalMenu(),
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
          Headers(colorMedio, "Infección Intraabdominal", "assets/InfeccionIntraabdominal/intraabdominalTitulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                ImagenEncabezadoSeccion("assets/InfeccionIntraabdominal/intraabdominal_b3.png"),
                divisorTitulado(context, "Recomendaciones generales"),
                Container(height: MediaQuery.of(context).size.height*0.025,),

                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Se recomienda:\n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Adicional al tratamiento antimicrobiano se debe asegurar el adecuado control del foco de infección; determinando el momento adecuado de la intervención de acuerdo con el cuadro clínico, los datos imagenológicos y de laboratorio clínico.\n",
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
                            text: "El tratamiento antimicrobiano empírico debe estar orientado por la epidemiología local.\n",
                            style: _estiloLetra1(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "No usar ciprofloxacina, levofloxacina o moxifloxacina como tratamiento empírico.\n",
                            style: _estiloLetra1(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "No usar agentes antimicóticos como terapia empírica, excepto en pacientes críticamente enfermos con fuente de la infección gastrointestinal superior.\n",
                            style: _estiloLetra1(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "En pacientes con bajo riesgo usar antimicrobianos de espectro estrecho, como antimicrobianos con actividad contra Enterobacterales, estreptococos aerobios y microorganismos anaerobios.\n",
                            style: _estiloLetra1(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "En pacientes con bajo riesgo no usar agentes de espectro más amplio o terapias combinadas con la idea de proporcionar cobertura anti ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "pseudomonas, ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "anti ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "enterococcal ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "o ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "antifúngica.\n",
                            style: _estiloLetra1(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "En pacientes de alto riesgo considerar el uso de ampicilina o vancomicina como tratamiento empírico anti enterococal, si el paciente no está siendo tratado con piperacilina tazobactam o imipenem cilastatina.\n",
                            style: _estiloLetra1(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "En pacientes de alto riesgo no añadir un aminoglucósido o fluoroquinolona a un β-lactámico como tratamiento empírico.\n",
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
                          estrella(context),
                          TextSpan(
                            text: "En pacientes con peritonitis y alto riesgo de ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "Pseudomonas aeruginosa ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "no usar carbapenémicos si según la epidemiología local, cefepime o piperacilina-tazobactam son sensibles in vitro.\n",
                            style: _estiloLetra1(context),
                          ),
                          estrella(context),
                          TextSpan(
                            text: "En pacientes con peritonitis y alto riesgo de ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "SAMR ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "no iniciar tratamiento empírico con antibióticos con cobertura para ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "Staphylococcus aureus ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "resistente a la meticilina.\n",
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
                            text: "Al momento de instaurar tratamiento antimicrobiano dirigido utilizar los datos de fenotipo, mecanismo de resistencia y concentración mínima inhibitoria (CMI) obtenidos a partir de la adecuada toma de cultivos, acompañado del juicio clínico, para determinar el tratamiento antimicrobiano adecuado.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
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
        textAlign: TextAlign.left,
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
  estrella(context){
    return  TextSpan(
      text: "★  ",
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
  _estiloLetraColorMedioItalic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorMedio,
        fontStyle: FontStyle.italic
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

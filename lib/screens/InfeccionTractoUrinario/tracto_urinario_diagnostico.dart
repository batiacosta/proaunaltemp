import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionTractoUrinario/infeccion_tractu_urinario_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class TractoUrinarioDiagnosticoCistitis extends StatefulWidget {
  const TractoUrinarioDiagnosticoCistitis({Key key}) : super(key: key);

  @override
  _TractoUrinarioDiagnosticoCistitisState createState() => _TractoUrinarioDiagnosticoCistitisState();
}

class _TractoUrinarioDiagnosticoCistitisState extends State<TractoUrinarioDiagnosticoCistitis> {
  @override
  Color colorClaro = new Color(0xffE2F4FD);
  Color colorMedio = new Color(0xff55BDEC);
  Color colorOscuro = new Color(0xff55BDEC);
  Color colorMuyOscuro = new Color(0xffF0737B);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/ProfilaxisQ":(BuildContext context)=>InfeccionTractoUrinarioMenu(),
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
          Headers(colorMedio, "Infecci??n del tracto urinario", "assets/InfeccionTractoUrinario/tractoUrinatioTitulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/ProfilaxisQ"),
                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/tractoUrinario_b1.png"),
                divisorTitulado(context, "Diagn??stico cistitis / pielonefritis no complicada"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Infecci??n del tracto urinario (ITU) no complicada: \n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          TextSpan(
                            text: "ITU en la que no existen anomal??as funcionales o anat??micas relevantes en el tracto urinario, ning??n deterioro relevante de la funci??n renal y ninguna enfermedad concomitante relevante que aumente el riesgo de desarrollar una ITU o de desarrollar complicaciones graves.\n\n",
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
                          TextSpan(
                            text: "SIGNOS / S??NTOMAS\n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          TextSpan(
                            text: "Se consideran s??ntomas cl??sicos de infecci??n del tracto urinario:\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Disuria.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Polaquiuria.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Dolor supra p??bico.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Urgencia urinaria.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Hematuria.\n",
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
                          TextSpan(
                            text: "Se recomienda:\n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En mujeres con s??ntomas de picaz??n o flujo vaginal, explorar otros diagn??sticos y considerar realizar examen p??lvico.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En mujeres premenop??usicas por lo dem??s sanas que presentan ??? 2 s??ntomas de infecci??n del tracto urinario sin s??ntomas de picaz??n o flujo vaginal, realizar Gram de orina sin centrifugar.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En mujeres premenop??usicas por lo dem??s sanas que presentan ??? 2 s??ntomas de infecci??n del tracto urinario sin picaz??n o flujo vaginal, con Gram de orina sin centrifugar negativo, utilizar las tiras reactivas para guiar las decisiones de tratamiento.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En pacientes que presentan s??ntomas o signos de infecci??n urinaria y tienen fiebre o dolor lumbar, considerar la posibilidad de pielonefritis.\n\n",
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
                            text: "Realizar cultivos de orina en pacientes con:\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Sospecha de pielonefritis aguda o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "S??ntomas que se repiten o no se\n   resuelven despu??s de la finalizaci??n del\n   tratamiento o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "S??ntomas at??picos con sospecha de\n   cistitis o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Al menos un episodio previo de cistitis o\n   pielonefritis en el ??ltimo a??o o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Tratamiento antibi??tico en los ??ltimos 6\n   meses por cualquier causa.\n",
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
                          triangulito(context),
                          TextSpan(
                            text: "No realizar estudios diagn??sticos adicionales a los criterios cl??nicos en pacientes sanas premenop??usicas que presentan un primer episodio con tres o m??s de los s??ntomas cl??sicos de infecci??n del tracto urinario.\n\n",
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

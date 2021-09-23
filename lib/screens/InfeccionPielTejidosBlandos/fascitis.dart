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

class Fascitis extends StatefulWidget {
  const Fascitis({Key key}) : super(key: key);

  @override
  _FascitisState createState() => _FascitisState();
}

class _FascitisState extends State<Fascitis> {
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
                divisorTitulado(context, "Fascitis necrosante"),
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
                            text: "Sospechar fascitis necrosante cuando se presentan cualquiera de los siguientes síntomas o signos: \n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Dolor severo inconsistente con los\n   hallazgos en el examen físico.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Deterioro clínico rápidamente\n   progresivo.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Ampollas.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Edema a tensión.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Equimosis o piel necrótica.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Crepitación palpable.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Hipoestesia localizada en piel.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "SIRS.\n",
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
                            text: "En pacientes con alta sospecha clínica no retrasar el inicio del tratamiento por el uso de escalas o procedimientos diagnósticos.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En pacientes con duda clínica, usar la escala de LRINEC modificada para orientar la decisión del manejo quirúrgico.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En pacientes con duda diagnóstica, utilizar la ecografía, TAC o RM según disponibilidad como herramienta diagnostica.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "El aspecto macroscópico del tejido celular subcutáneo y la fascia es el signo clínico principal intraoperatorio para el diagnóstico de IPTB necrosante. \n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Para el diagnóstico bacteriológico realizar Gram y cultivo de tejido profundo intraoperatorio y hemocultivos.\n",
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
                            text: "Se recomienda: \n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Para los pacientes con alta sospecha diagnóstica de IPTB necrosante, realizar manejo quirúrgico.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Tratamiento antibiótico empírico de amplio espectro, vía endovenosa, incluyendo el cubrimiento de ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "SAMR.\n",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Vancomicina + cefepime o piperacilina/\n   tazobactam + clindamicina. \n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Remplazar vancomicina por linezolid en\n   pacientes con falla renal.\n",
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
                            text: "En caso de pacientes con compromiso de la función hepática o cirrosis, ingesta reciente de comida de mar o contacto con agua salada, emplear terapia combinada con cefalosporina de tercera o cuarta generación y doxiciclina por sospecha de ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "Vibrio vulnificus.\n\n",
                            style: _estiloLetra1Italic(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Para paciente con factores de riesgo para infección por ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "Aeromonas ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "spp. el uso de cefepime, o quinolona + doxicilcina\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Una vez se cuenta con aislamiento microbiológico ajustar la terapia antibiótica a un espectro más estrecho basado en la susceptibilidad del cultivo.\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "En aquellos pacientes con infección confirmada por ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "Streptococcus β ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "hemolítico del grupo A el uso de penicilina + clindamicina.\n\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),


                VerImagen("assets/InfeccionPielTejidosBlandos/tejidosTabla3.png", 1, "t"),




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

import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/neumonia_adquirida_en_comunidad.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/logoFooter.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
class SignosSintomasNAC extends StatefulWidget {
  const SignosSintomasNAC({Key key}) : super(key: key);

  @override
  _SignosSintomasNACState createState() => _SignosSintomasNACState();
}

class _SignosSintomasNACState extends State<SignosSintomasNAC> {
  @override
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/NAC":(BuildContext context)=>NeumoniaAdquiridaEnComunidad(),
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
          Headers(colorMedio, "Neumonía adquirida\nen comunidad", "assets/NeumoniaAdquiridaEnComunidad/titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/NAC"),
                ImagenEncabezadoSeccion("assets/NeumoniaAdquiridaEnComunidad/diagnostico.png"),
                menuDiagnostico(context),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Los signos y síntomas pueden variar según factores como la severidad del cuadro clínico, el agente causal, la edad del paciente y el estado de salud en general.\n",
                            style: _estiloLetra1(context),
                        ),
                      ]
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "El cuadro clínico puede incluir:\n",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Tos que puede producir esputo\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Disnea\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Dolor pleurítico\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Fiebre\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Taquicardia\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Taquipnea\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Auscultación pulmonar anormal\n",
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
                            text: "Signos y síntomas que, sumados a la imagen de tórax con hallazgos positivos (infiltrados alveolares o intersticiales), en ausencia de otro diagnostico más probable, permiten realizar el diagnóstico de neumonía.",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/NAC"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),
          //LogoFooter(2, colorMedio),
        ],
      ),
    );
  }

  Widget menuDiagnostico(context){
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
                          text: "Signos / Síntomas",
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
        color: colorOscuro,
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

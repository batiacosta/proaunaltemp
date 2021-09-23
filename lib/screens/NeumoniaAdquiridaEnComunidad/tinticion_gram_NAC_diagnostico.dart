import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/verImagen.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/neumonia_adquirida_en_comunidad.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class TinticionGramNACDiagnostico extends StatefulWidget {
  const TinticionGramNACDiagnostico({Key key}) : super(key: key);

  @override
  _TinticionGramNACDiagnosticoState createState() => _TinticionGramNACDiagnosticoState();
}

class _TinticionGramNACDiagnosticoState extends State<TinticionGramNACDiagnostico> {
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
                menuDiagnostico(context, "Tinción de Gram y cultivo de esputo"),
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
                          TextSpan(
                            text: "➢  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "No realizar de forma rutinaria en adultos con NAC de manejo ambulatorio.\n\n",
                            style: _estiloLetra1(context)
                          ),
                          TextSpan(
                            text: "✓  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Realizar tinción de Gram y cultivo de secreciones del tracto respiratorio inferior previo al inicio de tratamiento antimicrobiano en adultos con NAC de manejo intrahospitalario que:\n",
                            style: _estiloLetra1(context)
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
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Se clasifican como NAC grave o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Tienen factores de riesgo para ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "SAMR ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "    P. aeruginosa ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Tienen antecedente de infección por\n    ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "SAMR ",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: "o ",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "P. aeruginosa",
                            style: _estiloLetra1Italic(context),
                          ),
                          TextSpan(
                            text: ", especialmente\n    aquellos con infección previa del\n    tracto respiratorio  o\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Tienen antecedente de hospitalización y\n    terapia antimicrobiana en los últimos 90\n    días.\n",
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
                            text: "Como punto de buena práctica: \n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          TextSpan(
                            text: "Previo a la interpretación del informe verificar los parámetros de calidad de la muestra del tracto respiratorio con los criterios de Murray y Washington, considerando las categorías 2 o 3 como muestras de buena calidad.\n\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),
                VerImagen("assets/NeumoniaAdquiridaEnComunidad/tinticionDiagnosticoTabla1.png", 1, "t2"),
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

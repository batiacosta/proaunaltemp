import 'dart:ui';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/manipularImagen.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/verImagen.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/profilaxis_quirurgica_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class PreoperatoriaProfilaxisQuirurgica extends StatefulWidget {
  const PreoperatoriaProfilaxisQuirurgica({Key key}) : super(key: key);

  @override
  _PreoperatoriaProfilaxisQuirurgicaState createState() => _PreoperatoriaProfilaxisQuirurgicaState();
}

class _PreoperatoriaProfilaxisQuirurgicaState extends State<PreoperatoriaProfilaxisQuirurgica> {
  @override
  Color colorClaro = new Color(0xffFDE9E6);
  Color colorMedio = new Color(0xffEE3338);
  Color colorOscuro = new Color(0xffF0737B);
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
                ImagenEncabezadoSeccion("assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b3.png"),
                divisorTitulado(context, "PREOPERATORIA"),
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
                            text: "Administrar la profilaxis quir??rgica antimicrobiana antes de la incisi??n quir??rgica cuando est?? indicado (seg??n el tipo de procedimiento).\n\n",
                            style: _estiloLetra1(context),
                          ),
                          chulo(context),
                          TextSpan(
                            text: "Administrar la profilaxis quir??rgica antimicrobiana dentro de los 120 minutos antes de la incisi??n, para establecer una concentraci??n ??ptima de los agentes antimicrobianos en el suero y los tejidos al momento de realizar la incisi??n quir??rgica\n\n",
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
                            text: "Como puntos de buena pr??ctica:\n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Considere la administraci??n de profilaxis\n    quir??rgica antimicrobiana en la cirug??a\n    limpia-contaminada, contaminada y\n    limpia con colocaci??n de implante o\n    pr??tesis.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Para establecer el momento ??ptimo de\n    administraci??n dentro de los 120\n    minutos antes de la incisi??n, tenga en\n    cuenta la vida media del antibi??tico.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "???  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Para antibi??ticos con una vida media\n    corta, como cefazolina, cefuroxima y\n    penicilinas en general, realice la\n    administraci??n de profilaxis quir??rgica\n    antimicrobiana en los 60 minutos antes\n    de la incisi??n.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),


                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Vida media de los antibi??ticos m??s utilizados para profilaxis antibi??tica quir??rgica\n",
                            style: _estiloLetraColorMedio(context),
                          ),
                        ]
                    ),
                  ),
                ),
                VerImagen("assets/ProfilaxisQuirurgica/preoperatoriaTabla1.png", 1, "t2"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Profilaxis antibi??tica seg??n el tipo de cirug??a\n",
                            style: _estiloLetraColorMedio(context),
                          ),
                        ]
                    ),
                  ),
                ),

                botonImagen(context, "Cirug??a de cabeza y cuello",
                    "assets/ProfilaxisQuirurgica/preoperatorioT1.png",
                    Color(0xffEE3338)
                ),
                botonImagen(context, "Neurocirug??a",
                    "assets/ProfilaxisQuirurgica/preoperatorioT2.png",
                    Color(0xffEF453F)
                ),
                botonImagen(context, "Cirug??a Cardiaca",
                    "assets/ProfilaxisQuirurgica/preoperatorioT3.png",
                    Color(0xffF05448)
                ),
                botonImagen(context, "Cirug??a Vascular perif??rica",
                    "assets/ProfilaxisQuirurgica/preoperatorioT4.png",
                    Color(0xffF16254)
                ),
                botonImagen(context, "Cirug??a Tor??xica",
                    "assets/ProfilaxisQuirurgica/preoperatorioT5.png",
                    Color(0xffF27061)
                ),
                botonImagen(context, "Cirug??a Gastrointestinal",
                    "assets/ProfilaxisQuirurgica/preoperatorioT6.png",
                    Color(0xffF47D6E)
                ),
                botonImagen(context, "Cirug??a Ortop??dica",
                    "assets/ProfilaxisQuirurgica/preoperatorioT7.png",
                    Color(0xffF5897D)
                ),
                botonImagen(context, "Cirug??a Urol??gica",
                    "assets/ProfilaxisQuirurgica/preoperatorioT8.png",
                    Color(0xffF6958D)
                ),
                botonImagen(context, "Cirug??a Ginecol??gica",
                    "assets/ProfilaxisQuirurgica/preoperatorioT9.png",
                    Color(0xffF7A19D)
                ),
                botonImagen(context, "Cirug??a de mama",
                    "assets/ProfilaxisQuirurgica/preoperatorioT10.png",
                    Color(0xffF8AEB0)
                ),

                //Image(image: AssetImage("assets/ProfilaxisQuirurgica/preoperatorioRef.png")),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Dosis de antibi??ticos para profilaxis quir??rgica\n",
                            style: _estiloLetraColorMedio(context),
                          ),
                        ]
                    ),
                  ),
                ),
                VerImagen("assets/ProfilaxisQuirurgica/preoperatoriaTabla3.png", 3, "t2"),



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
  Widget botonImagen(context,String titulo, String image, Color color){
    return new TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child:Container(
          width: double.infinity,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                children: [
                  TextSpan(
                      text: titulo,
                      style: _estiloLetraWhite(context)
                  ),
                ]
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new ManipularImagen(image)));
        }
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
      color: colorOscuro,
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

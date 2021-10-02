import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/verImagen.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_moderado_Tratamiento.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class NACModeradaSinFactoresRiesgo extends StatefulWidget {
  const NACModeradaSinFactoresRiesgo({Key key}) : super(key: key);

  @override
  _NACModeradaSinFactoresRiesgoState createState() => _NACModeradaSinFactoresRiesgoState();
}

class _NACModeradaSinFactoresRiesgoState extends State<NACModeradaSinFactoresRiesgo> {
  @override
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  Color nuevoColor = new Color(0xffF37036);
  bool sinRiesgo = true;
  bool conRiesgo = false;
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/TratamientoAntimicrobiano":(BuildContext context)=>NACModeradoNACTratamiento(),
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
                Volver(1, "/TratamientoAntimicrobiano"),
                ImagenEncabezadoSeccion("assets/NeumoniaAdquiridaEnComunidad/tratamiento.png"),
                menuDiagnostico(context, "Tratamiento antimicrobiano"),
                Container(
                  color: nuevoColor,
                  child: Column(
                    children: [
                      Container(
                        padding: paddingNormal(),
                        width: double.infinity,
                        decoration:BoxDecoration(
                            border:Border(bottom:BorderSide(color:Colors.white,width:1))
                        ),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "NAC MODERADA",
                                    style: _estiloLetraTitulo(context)
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff76B8CE)),
                    ),
                    child:RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "PACIENTE SIN FACTORES DE RIESGO PARA ",
                                style: _estiloLetraWhite(context)
                            ),
                            TextSpan(
                                text: "SAMR ",
                                style: _estiloLetraWhiteItalic(context)
                            ),
                            TextSpan(
                                text: "O ",
                                style: _estiloLetraWhite(context)
                            ),
                            TextSpan(
                                text: "P. AERUGINOSA",
                                style: _estiloLetraWhiteItalic(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: (){
                      setState((){
                      });
                    },
                  ),
                ),
                pacienteSinFactores(context),

                Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/TratamientoAntimicrobiano"),
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
      color: colorMedio,
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

  Widget pacienteSinFactores(context){
    if(sinRiesgo==true){
      return new Column(
        children: [
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
                      text: "Para adultos con diagnóstico de NAC moderada sin factores de riesgo para ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "SAMR ",
                      style: _estiloLetraColorMedioItalic(context),
                    ),
                    TextSpan(
                      text: "o ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "P. aeruginosa: \n",
                      style: _estiloLetraColorMedioItalic(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Monoterapia con un betalactámico:\n   ampicilina/sulbactam, y revalorar a las\n   48 a 72 horas teniendo en cuenta\n   aspectos como el empeoramiento en\n   anomalías de los signos vitales, la\n   capacidad para comer y el estado mental\n   para considerar la necesidad de adicionar\n   un macrólido: claritromicina.\n",
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
                      text: "Si existe alergia a la penicilina:\n",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Monoterapia con ceftriaxona o \n",
                      style: _estiloLetra1(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Monoterapia con cefuroxima o \n",
                      style: _estiloLetra1(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Monoterapia con doxiciclina \n",
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
                    TextSpan(
                      text: "Como punto de buena práctica:\n",
                      style: _estiloLetraColorMedioBold(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Evitar el uso de quinolonas\n",
                      style: _estiloLetra1(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "No agregar al esquema terapéutico\n   instaurado cobertura anaeróbica\n   adicional para la sospecha de neumonía\n   por aspiración, a menos que se sospeche\n   un absceso pulmonar o empiema.\n",
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
                    //rombo(context),
                    TextSpan(
                      text: "Duración de la terapia antimicrobiana:\n",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "De hasta 5 días en total, teniendo en\n   cuenta como criterios para la suspensión\n   del tratamiento la evolución clínica\n   favorable.\n",
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
                    TextSpan(
                      text: "Punto de buena práctica: \n",
                      style: _estiloLetraColorMedioBold(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Si se dispone de procalcitonina sérica, se\n   puede utilizar para decidir la suspensión\n   de la terapia antimicrobiana.\n",
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
                    //rombo(context),
                    TextSpan(
                      text: "Vía de administración:\n",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Emplear como primera línea el uso de\n   antimicrobianos orales, teniendo en\n   cuenta la tolerancia a la vía oral y la\n   gravedad de la infección o \n",
                      style: _estiloLetra1(context),
                    ),
                    TextSpan(
                      text: "•  ",
                      style: _estiloLetraColorMedio(context),
                    ),
                    TextSpan(
                      text: "Revalorar a las 48 horas de inicio de la\n   terapia antimicrobiana intravenosa, para\n   considerar la posibilidad del cambio a\n   antimicrobianos orales.\n",
                      style: _estiloLetra1(context),
                    ),
                  ]
              ),
            ),
          ),
          VerImagen("assets/NeumoniaAdquiridaEnComunidad/tablaNACModeradoSinRiesgo.png", 1, "t"),
        ],
      );
    }else{return new Container();}
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
  _estiloLetraWhiteItalic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: Colors.white,
        fontStyle: FontStyle.italic
    );
  }
  _estiloLetraColorMedio(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorOscuro,
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
  _estiloLetraColorMedioItalic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorOscuro,
        fontStyle: FontStyle.italic
    );
  }
  _estiloLetraColorNuevo(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: nuevoColor,
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
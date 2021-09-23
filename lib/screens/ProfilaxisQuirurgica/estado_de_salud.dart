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

class EstadoSaludProfilaxisQuirurgica extends StatefulWidget {
  const EstadoSaludProfilaxisQuirurgica({Key key}) : super(key: key);

  @override
  _EstadoSaludProfilaxisQuirurgicaState createState() => _EstadoSaludProfilaxisQuirurgicaState();
}

class _EstadoSaludProfilaxisQuirurgicaState extends State<EstadoSaludProfilaxisQuirurgica> {
  @override
  Color colorClaro = new Color(0xffFDE9E6);
  Color colorMedio = new Color(0xffEF7765);
  Color colorOscuro = new Color(0xffEF7765);
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
          Headers(colorMedio, "Profilaxis quirúrgica", "assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_titulo.png"),
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

                    },
                  ),
                ),

                Container(height: MediaQuery.of(context).size.height*0.025,),

                EncabezadoConColor(
                    Color(0xffEF7765),
                    "ASA I",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Paciente sano\nEjemplo: Saludable, no fumador, consumo mínimo o nulo de alcohol",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEF7765),
                    "ASA II",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Paciente con enfermedad sistémica leve\nEjemplo: Enfermedad leve sin limitación funcional sustancial. Fumador actual, bebedor social de alcohol, embarazo, obesidad (30 <IMC <40), DM o HTA bien controlada, enfermedad pulmonar leve",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEF7765),
                    "ASA III",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Paciente con enfermedad sistémica grave\nEjemplo: Enfermedad con limitación funcional sustancial. DM o HTA mal controladas, EPOC, obesidad mórbida (IMC ≥ 40), hepatitis activa, dependencia o abuso del alcohol, marcapasos implantado, reducción moderada de la fracción de eyección, falla renal en etapa terminal que se somete a diálisis programada regularmente, antecedentes (> 3 meses) de ACV, AIT o IAM.",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEF7765),
                    "ASA IV",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Paciente con enfermedad sistémica grave que amenaza en forma constante la vida\nEjemplo: Reciente (< 3 meses) IAM, ACV o AIT, isquemia cardíaca en curso o disfunción valvular severa, reducción severa de la fracción de eyección, sepsis, CID, SDRA o falla renal en etapa terminal que no se somete a diálisis programada regularmente.",
                    colorDark
                ),
                EncabezadoConColor(
                    Color(0xffEF7765),
                    "ASA V",
                    Colors.white
                ),
                EncabezadoConColor(
                    Color(0xffFEF3F0),
                    "Paciente moribundo que no se espera que sobreviva a la cirugía\nEjemplo: Aneurisma abdominal / torácico roto, trauma masivo, hemorragia intracraneal con efecto de masa, isquemia intestinal o disfunción de múltiples órganos / sistemas.",
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

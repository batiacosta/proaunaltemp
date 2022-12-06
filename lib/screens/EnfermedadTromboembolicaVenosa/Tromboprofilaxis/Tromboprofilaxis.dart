

import 'package:acin/ReusableWidgets/BulletPointBold.dart';
import 'package:acin/ReusableWidgets/BulletPointRegular.dart';
import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/RoundedContainer.dart';
import 'package:acin/ReusableWidgets/RoundedContainerRegularBold.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/manipularImagen.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/EnfermedadTromboembolicaVenosa.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/CalculadoraCaprini.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETAbdominopelvico.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETCardiovascular.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETCirugiaPlastica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETNeurologica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETObesidad.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETObstetricia.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETOrtopedia.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETOtorrinolaringologia.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETToracica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETTraumatologia.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETUrologico.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETVascularPeriferico.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/FactoresRiesgoSangrado.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class Tromboprofilaxis extends StatefulWidget {
  Tromboprofilaxis({Key key}) : super(key: key);

  @override
  State<Tromboprofilaxis> createState() => _TromboprofilaxisState();
}

class _TromboprofilaxisState extends State<Tromboprofilaxis> {
  ColorPalette c = ColorPalette();
  GeneralSettings s = new GeneralSettings();
  Color colorClaro;
  Color colorMedio;

  List<bool> _state = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    colorClaro = c.enfermedadTromboembolicaVenosaBackground;
    colorMedio = c.enfermedadTromboembolicaVenosaRojoCabecera;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/Tromboprofilaxis":(BuildContext context)=>Tromboprofilaxis(),
          "/EnfermedadTromboembolicaVenosa":(BuildContext context)=>EnfermedadTromboembolicaVenosa(),
          "/ETAbdominopelvico":(BuildContext context)=>ETAbdominopelvico(),
          "/ETObesidad":(BuildContext context)=>ETObesidad(),
          "/ETUrologico":(BuildContext context)=>ETUrologico(),
          "/ETCirugiaPlastica":(BuildContext context)=>ETCirugiaPlastica(),
          "/ETOtorrinolaringologia":(BuildContext context)=>ETOtorrinolaringologia(),
          "/ETCardiovascular":(BuildContext context)=>ETCardiovascular(),
          "/ETVascularPeriferico":(BuildContext context)=>ETVascularPeriferico(),
          "/ETToracica":(BuildContext context)=>ETToracica(),
          "/ETObstetricia":(BuildContext context)=>ETObstetricia(),
          "/ETNeurologica":(BuildContext context)=>ETNeurologica(),
          "/ETOrtopedia":(BuildContext context)=>ETOrtopedia(),
          "/ETTraumatologia":(BuildContext context)=>ETTraumatologia(),
          "/FactoresRiesgoSangrado":(BuildContext context)=>FactoresRiesgoSangrado(),
          "/CalculadoraCaprini":(BuildContext context)=>CalculadoraCaprini(),
        },
        home: Scaffold(
        drawer: MenuDesplegado(),
        appBar: BarraSuperior().Barra(context, false),
        bottomNavigationBar: BarraInferior(),
        backgroundColor: c.tromboprofilaxisBackground,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: cuerpo(context),
        )
        )
    );
  }

  Widget cuerpo(context){
    return new Container(
      child: ListView(
        children: [

          Headers(colorMedio, "TROMBOPREVENCIÓN", "assets/m7.png"),


          Container(
            margin: s.margenNormal(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Volver(1, "/EnfermedadTromboembolicaVenosa"),
                Image.asset('assets/EnfermedadTromboembolicaVenosa/Tromboprofilaxis.png'),

                s.espacio(),

                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'ABDOMINOPÉLVICO/GINECOLÓGICO',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ETAbdominopelvico()),
                  )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'OBESIDAD',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETObesidad()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'UROLÓGICO',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETUrologico()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'CIRUGÍA PLÁSTICA Y RECONSTRUCTIVA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETCirugiaPlastica()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'OTORRINOLARINGOLOGÍA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETOtorrinolaringologia()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'CARDIOVASCULAR',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETCardiovascular()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'VASCULAR PERIFÉRICO',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETVascularPeriferico()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'TORÁCICA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETToracica()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'OBSTETRICIA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETObstetricia()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'NEUROLÓGICA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETNeurologica()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'ORTOPEDIA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETOrtopedia()),
                    )
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'TRAUMATOLOGÍA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ETTraumatologia()),
                    )
                ),
                s.espacioPequeno(),



                Volver(1, "/EnfermedadTromboembolicaVenosa"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

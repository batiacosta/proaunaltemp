

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
    return new Scaffold(
        drawer: MenuDesplegado(),
        appBar: BarraSuperior().Barra(context, false),
        bottomNavigationBar: BarraInferior(),
        backgroundColor: c.tromboprofilaxisBackground,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: cuerpo(context),
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
                  onTap: ()=> Navigator.pushNamed(context, '/ETAbdominopelvico')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'OBESIDAD',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETObesidad')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'UROLÓGICO',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETUrologico')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'CIRUGÍA PLÁSTICA Y RECONSTRUCTIVA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETCirugiaPlastica')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'OTORRINOLARINGOLOGÍA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETOtorrinolaringologia')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'CARDIOVASCULAR',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETCardiovascular')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'VASCULAR PERIFÉRICO',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETVascularPeriferico')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'TORÁCICA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETToracica')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'OBSTETRICIA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETObstetricia')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'NEUROLÓGICA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETNeurologica')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'ORTOPEDIA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETOrtopedia')
                ),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.white,
                    text: 'TRAUMATOLOGÍA',
                    colorText: c.tromboprofilaxisGris,
                  ),
                  onTap: ()=> Navigator.pushNamed(context, '/ETTraumatologia')
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

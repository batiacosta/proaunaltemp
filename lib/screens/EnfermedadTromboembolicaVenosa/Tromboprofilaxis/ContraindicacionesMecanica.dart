

import 'package:acin/ReusableWidgets/BulletPointBold.dart';
import 'package:acin/ReusableWidgets/BulletPointRegular.dart';
import 'package:acin/ReusableWidgets/BulletPointRegularGeneric.dart';
import 'package:acin/ReusableWidgets/Caprini.dart';
import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/DividerGeneral.dart';
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

class ContraindicacionesMecanica extends StatefulWidget {
  String atrasRoute;
  ContraindicacionesMecanica({Key key, this.atrasRoute}) : super(key: key);

  @override
  State<ContraindicacionesMecanica> createState() => _ContraindicacionesMecanicaState();
}

class _ContraindicacionesMecanicaState extends State<ContraindicacionesMecanica> {
  ColorPalette c = ColorPalette();
  GeneralSettings s = new GeneralSettings();
  Color colorClaro;
  Color colorMedio;

  double resulado;


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
            width: double.infinity,
            margin: s.margenNormal(context),
            child: Volver(1, "${widget.atrasRoute}"),
          ),
          s.espacio(),

          Container(
            margin: s.margenNormal(context),
            //padding: s.margenDelgado(context),
            decoration: BoxDecoration(
                //color: c.white,
                borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundedContainerRegularBold(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.white,
                  text: 'CONTRAINDICACIONES MECÁNICA',
                ),
                s.espacio(),

                Text(
                  'Tipos:',
                  style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera),
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Pasiva: Medias de compresión gradual.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Medias elásticas: ',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Presión: 18-23 mmHg de presión maleolar u 8-10 mmHg en fosa poplítea.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Medias hasta el muslo o la pantorrilla. Rodilla si es necesario acceder a los vasos de la ingle.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Inicio desde procedimiento, hasta la deambulación plena o 7 días POP.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Activa: Compresión Neumática intermitente, Bomba venosa plantar.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Presión 30 -45 mmHg.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Superior a medias elásticas.',
                ),
                s.espacio(),

                Text(
                  'Contraindicaciones:',
                  style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera),
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Enfermedad arterial periférica sospechada o comprobada. ',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Injerto de derivación arterial periférica. ',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Neuropatía periférica grave u otra alteración sensorial.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Alergia a componentes.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Enfermedad de la piel: Piel frágil, dermatitis, gangrena o injerto de piel reciente, síndrome de Steven Johnson. Alergia conocida al material.  Edema severo de la pierna.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Deformidad importante de las extremidades o forma inusual de las piernas que impide un ajuste correcto.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                  colorText: c.black,
                  text: 'Traumatismo de miembro inferior con férula.',
                ),


                Volver(1, "${widget.atrasRoute}"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

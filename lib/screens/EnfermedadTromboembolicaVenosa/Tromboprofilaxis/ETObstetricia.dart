

import 'package:acin/ReusableWidgets/BulletPointBold.dart';
import 'package:acin/ReusableWidgets/BulletPointRegular.dart';
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
import 'package:acin/ReusableWidgets/manipularImagenCaprini.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ContraindicacionesMecanica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/FactoresRiesgoSangrado.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class ETObstetricia extends StatefulWidget {
  ETObstetricia({Key key}) : super(key: key);

  @override
  State<ETObstetricia> createState() => _ETObstetriciaState();
}

class _ETObstetriciaState extends State<ETObstetricia> {
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
            child: Volver(1, "/Tromboprofilaxis"),
          ),
          s.espacio(),

          Container(
            width: double.infinity,
            margin: s.margenNormal(context),
            child: Caprini(),
          ),
          s.espacio(),
          Container(
            width: double.infinity,
            margin: s.margenNormal(context),
            child: Container(
              padding: s.margenNormalEspaciadd(context),
              decoration: BoxDecoration(
                color: c.white,
                borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
              ),
              child: Column(
                children: [
                  Text(
                    'OBSTETRICIA',
                    textAlign: TextAlign.center,
                    style: s.regularBold(context, c.tromboprofilaxisGris),
                  ),
                  Text(
                    'Royal College of Obstetricians and Gynaecologists 2015, Evaluar Factores de Riesgo: Edad >35 años, Obesidad (IMC 30 kg m2), Paridad tres., fumador, Cesárea electiva, Antecedentes familiares de TEV, Trombofilia de bajo riesgo, venas varicosas macroscópicas, Infección sistémica actual,  Inmovilidad, por ejemplo, paraplejía, larga distancia viajar, Preeclampsia actual, Embarazo múltiple, Parto prematuro en este embarazo (<37 semanas), Muerte fetal en este embarazo, Parto rotatorio u operatorio a mitad de la cavidad, Trabajo de parto prolongado (>24 h), Hemorragia posparto > 1 lt o transfusión e sangre.',
                    textAlign: TextAlign.left,
                    style: s.regular(context, c.tromboprofilaxisGris),
                  ),
                ],
              ),
            )
          ),
          s.espacio(),

          Container(
            margin: s.margenNormal(context),
            padding: s.margenDelgado(context),
            decoration: BoxDecoration(
              color: c.white,
              borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                s.espacio(),

                Container(
                  width: double.infinity,
                  child: Text(
                    'PROCEDIMIENTOS',
                    textAlign: TextAlign.center,
                    style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojo),
                  ),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),

                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      'Si indica reposo menos 7 días',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/ObstetriciaTabla1.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),
                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      'Si indica reposo 7 días',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/ObstetriciaTabla2.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),

                s.espacio(),
              ],
            ),
          ),



          Container(
            margin: s.margenNormal(context),
            child: Column(
              children: [
                s.espacio(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.enfermedadTromboembolicaVenosaRojo,
                    colorText: c.white,
                    text: 'FACTORES RIESGO SANGRADO',
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new FactoresRiesgoSangrado(atrasRoute: '/ETObstetricia'))),
                ),
                s.espacio(),
                InkWell(
                  child: RoundedContainerRegularBold(
                    color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                    colorText: c.white,
                    text: 'CONTRAINDICACIONES MECÁNICA',
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ContraindicacionesMecanica(atrasRoute: '/ETObstetricia'))),
                ),

                s.espacio(),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: c.white,
                      borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: s.margenNormalEspaciadd(context),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: c.tromboprofilaxisAzulrey,
                            borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
                        ),
                        child: Text(
                          'FARMACOLOGÍA',
                          textAlign: TextAlign.center,
                          style: s.regularBold(context, c.white),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: s.margenNormalEspaciadd(context),
                          width: double.infinity,
                          child: Text(
                            'No ortopédico',
                            textAlign: TextAlign.center,
                            style: s.regularBold(context, c.tromboprofilaxisAzulrey),
                          ),
                        ),
                        onTap: ()=> Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/FarmacologiaNoOrtopedica.png'))),
                      ),
                      DividerGeneral(color: c.tromboprofilaxisAzulrey),
                      InkWell(
                        child: Container(
                          padding: s.margenNormalEspaciadd(context),
                          width: double.infinity,
                          child: Text(
                            'Ortopédico',
                            textAlign: TextAlign.center,
                            style: s.regularBold(context, c.tromboprofilaxisAzulClaro),
                          ),
                        ),
                        onTap: ()=> Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/FarmacologiaOrtopedica.png'))),
                      ),
                    ],
                  ),
                ),

                Volver(1, "/Tromboprofilaxis"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          )
        ],
      ),
    );
  }


}

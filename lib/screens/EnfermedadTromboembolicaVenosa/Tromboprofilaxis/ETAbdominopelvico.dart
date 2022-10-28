

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

class ETAbdominopelvico extends StatefulWidget {
  ETAbdominopelvico({Key key}) : super(key: key);

  @override
  State<ETAbdominopelvico> createState() => _ETAbdominopelvicoState();
}

class _ETAbdominopelvicoState extends State<ETAbdominopelvico> {
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
            child: RoundedContainerRegularBold(
              colorText: c.tromboprofilaxisGris,
              text: 'ABDOMINOPÉLVICO/GINECOLÓGICO',
              color: c.white,
            ),
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
                      'Cirugía Ambulatoria',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/abdominopelvicoTabla1.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),
                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      'Laparoscópica Programada\n'
                          'Cirugía ambulatoria en mujeres con factores adicionales de riesgo de TEV',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/abdominopelvicoTabla2.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),
                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      'Cirugía por patología benigna con internación\n'
                          'Infección Perioperatorio o postparto Cesárea',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/abdominopelvicoTabla3.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),
                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      'Malignidad,\n'
                          'Enfermedad Inflamatoria Intestinal, Urgencias, Trasfusión de hemocomponentes en perioperatorio\nEstancia ≥3 días o Manejo de Complicación\n'
                          'Irradiación Pélvica previa.',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/abdominopelvicoTabla4.png'))),
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
                          new FactoresRiesgoSangrado(atrasRoute: '/ETAbdominopelvico'))),
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
                          new ContraindicacionesMecanica(atrasRoute: '/ETAbdominopelvico'))),
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

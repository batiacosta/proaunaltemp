

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

class ETUrologico extends StatefulWidget {
  ETUrologico({Key key}) : super(key: key);

  @override
  State<ETUrologico> createState() => _ETUrologicoState();
}

class _ETUrologicoState extends State<ETUrologico> {
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
            child: Caprini(atrasRoute: '/ETUrologico'),
          ),
          s.espacio(),
          Container(
            width: double.infinity,
            margin: s.margenNormal(context),
            child: Container(
              padding: s.margenNormalEspaciado(context),
              decoration: BoxDecoration(
                color: c.white,
                borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "UROLÓGICO\n",
                          style: s.regularBold(context, c.tromboprofilaxisGris)
                      ),
                      TextSpan(
                          text: "Factores de riesgo: TEV previo , TEV en familiar primer grado , Edad ≥ 75años o IMC ≥35kg/m2.",
                          style: s.regular(context, c.tromboprofilaxisGris)
                      ),
                    ]
                ),
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
                      'Circuncisión, Hidrocelectomia o Vasectomia.\nSin FR: rostatectomia sin resección ganglionar. Nefrectomia del Donante.\n1 FR: RTUP, Nefrolitotomia percutánea, Cirugía Prolapso o recontructiva genital y Piso Pélvico.',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/UrologicoTabla1.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),
                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      '0 FR: Prostatectomia Laparoscopica con resección ganglionar,nefrectomía laparoscopica o robotica.\n1 FR: Nefrectomia abierta de donante.\n2 FR o Antecedente: RTUP, nefrolitotomia percutánea, cirugía prolapso o piso pélvico.',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/UrologicoTabla2.png'))),
                ),
                DividerGeneral(color: c.enfermedadTromboembolicaVenosaRojo,),
                InkWell(
                  child: Container(
                    margin: s.margenDelgado(context),
                    child: Text(
                      'Malignidad Nefrectomía Cistectomia radical Abierta Nefrectomía  con trombectomía, \nUreterectomía, \nResección retroperitoneal ganglionar con preservación nerviosa primaria',
                      style: s.regular(context, c.tromboprofilaxisGris),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new ManipularImagenCaprini('assets/EnfermedadTromboembolicaVenosa/UrologicoTabla1.png'))),
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
                          new FactoresRiesgoSangrado(atrasRoute: '/ETUrologico'))),
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
                          new ContraindicacionesMecanica(atrasRoute: '/ETUrologico'))),
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
                        padding: s.margenNormalEspaciado(context),
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
                          padding: s.margenNormalEspaciado(context),
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
                          padding: s.margenNormalEspaciado(context),
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

import 'package:acin/ReusableWidgets/BulletPointRegular.dart';
import 'package:acin/ReusableWidgets/BulletPointRegularGeneric.dart';
import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/SquaredCenteredBold.dart';
import 'package:acin/ReusableWidgets/SquaredRegular.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioMenu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_diagnostico.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_cistitis.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_pielonefritis.dart';

import 'package:flutter/material.dart';
class DiagnosticoITUComplicada extends StatefulWidget {
  const DiagnosticoITUComplicada({Key key}) : super(key: key);

  @override
  _DiagnosticoITUComplicadaState createState() => _DiagnosticoITUComplicadaState();
}

class _DiagnosticoITUComplicadaState extends State<DiagnosticoITUComplicada> {
  Color colorClaro = new Color(0xffE2F4FD);
  Color colorMedio = new Color(0xff55BDEC);

  GeneralSettings s = new GeneralSettings();
  ColorPalette c = new ColorPalette();

  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: MenuDesplegado(),
        appBar: BarraSuperior().Barra(context, false),
        bottomNavigationBar: BarraInferior(),
        backgroundColor: colorClaro,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: cuerpo(context),
        )
    );
  }

  Widget cuerpo(context){
    return new Container(

      child: ListView(
        shrinkWrap: true,
        children: [
          Headers(colorMedio, "Infección del tracto urinario", "assets/InfeccionTractoUrinario/tractoUrinatioTitulo.png"),
          Container(
            margin: s.margenNormal(context),
            child: Column(
              children: [
                Volver(1, "/ITUComplicada"),
                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/InfeccionComplicada.png"),

                Container(
                  color: c.white,
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Infección del tracto urinario (ITU) complicada: ',
                        style: s.regular(context,c.infeccionTractoUrinarioVerde),
                      ),

                      Text(
                        'ITU que ocurre en pacientes con comorbilidades o con anomalías estructurales o funcionales del tracto urinario '
                            'que pueden condicionar un mayor riesgo de desarrollar complicaciones, un curso clínico grave, '
                            'fracaso terapéutico o recurrencia de la infección, la cual incluye un amplio grupo de pacientes y patologías '
                            '(ej. mujeres posmenopáusicas, hombres adultos, pacientes con patología urológica, usuarios de catéter '
                            'urinario, adultos mayores, pacientes con diagnóstico de diabetes, entre otros).',
                        style: s.regular(context,c.black),
                        textAlign: TextAlign.justify,
                      ),
                      s.espacio(),

                      SquaredCenteredBold(
                        textColor: c.white,
                        text: 'Puntos de buena práctica para el diagnóstico de ITU complicada',
                        color: c.infeccionTractoUrinarioAmarillo,
                      ),
                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'En pacientes que presenten dos o más síntomas urinarios bajos '
                            '(disuria, polaquiuria, urgencia, dolor suprapúbico, hematuria) considerar '
                            'la sospecha clínica de ITU.',
                      ),
                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'En pacientes con fiebre y dolor en flanco, incluso en ausencia de '
                            'síntomas urinarios bajos, considerar la sospecha clínica de ITU.',
                      ),
                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'En pacientes adultos mayores:',
                      ),
                      Container(
                        margin: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.guion,
                          text: 'Con patología neurocognitiva, trastorno de la comunicación, o que no presenten síntomas típicos de IVU, '
                              'considerar la ITU como un diagnóstico de exclusión.',
                        ),
                      ),
                      Container(
                        margin: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.guion,
                          text: 'Aun en ausencia de fiebre, considerar el diagnóstico de ITU.',
                        ),
                      ),
                      Container(
                        margin: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.guion,
                          text: 'Con manifestaciones atípicas de infección como: delirium, caída centinela, '
                              'alteraciones en el patrón de incontinencia, y/o síntomas gastrointestinales, considerar la sospecha clínica de ITU.',
                        ),
                      ),



                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Utilizar los parámetros de la tira reactiva y el Gram de orina sin centrifugar '
                            'como herramientas para realizar el diagnóstico de ITU.',
                      ),
                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'No usar la apariencia de la orina, ni el hallazgo de piuria, como herramientas únicas para realizar el diagnóstico de ITU, '
                            'especialmente en pacientes portadores de catéter urinario.',
                      ),
                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'En pacientes portadores de catéter urinario tomar la muestra de orina con las medidas de asepsia y antisepsia '
                            'apropiadas o a partir del reservorio destinado para tal efecto.',
                      ),
                      s.espacio(),

                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Considerar la toma de imágenes diagnósticas del tracto urinario para '
                            'identificar trastornos '
                            'urológicos que requieran manejo complementario.',
                      ),
                      s.espacio(),


                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Considerar la toma de hemocultivos en pacientes con sepsis y sospecha clínica '
                            'de ITU.',
                      ),

                      s.espacio(),
                    ],
                  ),
                ),

                s.espacio(),
                s.espacio(),

                Volver(1, "/ITUComplicada"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),
        ],
      ),
    );
  }




}

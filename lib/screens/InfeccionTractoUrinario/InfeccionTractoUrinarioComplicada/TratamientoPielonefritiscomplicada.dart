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
import 'package:acin/ReusableWidgets/verImagen.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioMenu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_diagnostico.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_cistitis.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_pielonefritis.dart';

import 'package:flutter/material.dart';
class TratamientoPielonefritiscomplicada extends StatefulWidget {
  const TratamientoPielonefritiscomplicada({Key key}) : super(key: key);

  @override
  _TratamientoPielonefritiscomplicadaState createState() => _TratamientoPielonefritiscomplicadaState();
}

class _TratamientoPielonefritiscomplicadaState extends State<TratamientoPielonefritiscomplicada> {
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
                SquaredCenteredBold(
                  textColor: c.white,
                  text: 'Tratamiento antimicrobiano pielonefritis complicada',
                  color: c.infeccionTractoUrinarioAmarillo,
                ),
                Container(
                  color: c.white,
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Se sugiere',
                          style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '• ',
                              style: s.regularBold(context, c.infeccionTractoUrinarioVerde),
                            ),
                            Expanded(
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Como primera opción en pacientes sin uso previo de antibióticos, o sin instrumentación '
                                            'de la vía urinaria en los últimos 3 meses: ',
                                        style: s.regular(context, c.infeccionTractoUrinarioVerde),
                                      ),
                                      TextSpan(
                                        text: 'Cefalosporina de primera generación (cefazolina IV, cefalexina oral).',
                                        style: s.regular(context, c.tromboprofilaxisGris),
                                      ),
                                    ]
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '• ',
                              style: s.regularBold(context, c.infeccionTractoUrinarioVerde),
                            ),
                            Expanded(
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Como primera opción en pacientes con uso previo de antibióticos en los últimos 3 meses: ',
                                          style: s.regular(context, c.infeccionTractoUrinarioVerde),
                                        ),
                                        TextSpan(
                                          text: 'Cefalosporina de segunda generación (cefuroxima IV u oral).',
                                          style: s.regular(context, c.tromboprofilaxisGris),
                                        ),
                                      ]
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '• ',
                              style: s.regularBold(context, c.infeccionTractoUrinarioVerde),
                            ),
                            Expanded(
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Como primera opción en pacientes con diagnóstico de urolitiasis e instrumentación de la vía urinaria, o en pacientes '
                                              'portadores de catéteres de la vía urinaria alta (nefrostomías, catéteres ureterales):',
                                          style: s.regular(context, c.infeccionTractoUrinarioVerde),
                                        ),
                                        TextSpan(
                                          text: 'Cefalosporina de tercera generación (ceftriaxona IV).',
                                          style: s.regular(context, c.tromboprofilaxisGris),
                                        ),
                                      ]
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      s.espacio(),s.espacio(),

                      Text(
                        'Como puntos de buena práctica: ',
                        style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Como alternativa en caso de alergia a beta-lactámicos: Aztreonam.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'No usar nitrofurantoína ni fosfomicina-trometamol en caso de sospecha clínica '
                            'o diagnóstico confirmado de pielonefritis.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'No usar como tratamiento antimicrobiano empírico: amoxicilina, amoxicilina/clavulanato, '
                            'ampicilina, ampicilina/sulbactam, trimetoprim/sulfametoxazol o fluoroquinolonas.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Si se dispone del resultado de urocultivo y antibiograma tomado en los últimos 3 meses, '
                            'se puede utilizar para decidir el tratamiento antimicrobiano a instaurar.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Para la elección y ajuste de dosis de los antimicrobianos, estimar '
                            'la TFG usando las ecuaciones basadas en creatinina sérica.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Realizar seguimiento de los eventos adversos de los antimicrobianos '
                            'empleados incluyendo la resistencia bacteriana.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Revalorar a las 48 horas del inicio de la terapia antimicrobiana, y en caso de '
                            'mala respuesta considerar posibles causas o diagnósticos adicionales.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'En pacientes con evolución clínica favorable, mantener la terapia antimicrobiana empírica, independientemente del reporte '
                            'del antibiograma aun cuando se presente resistencia al antimicrobiano instaurado.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Ajustar el tratamiento antimicrobiano de acuerdo con el resultado del urocultivo y el antibiograma, en cuanto esté '
                            'disponible, usando el antibiótico de espectro más estrecho posible.',
                      ),
                      s.espacioPequeno(),

                      Text(
                        'Via de administración: ',
                        style: s.regular(context,c.infeccionTractoUrinarioVerde),
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Emplear como primera línea el uso de antimicrobianos orales, teniendo en '
                            'cuenta la tolerancia a la vía oral y la gravedad de la infección.',
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'En pacientes con tratamiento intravenoso, revalorar a las 48 horas de inicio de la terapia '
                            'antimicrobiana, para considerar la posibilidad del cambio a antimicrobianos orales.',
                      ),
                      s.espacioPequeno(),

                      Text(
                        'Duración del tratamiento antimicrobiano:',
                        style: s.regular(context,c.infeccionTractoUrinarioVerde),
                      ),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.tromboprofilaxisGris,
                        //align: 'j',
                        text: 'Se sugiere que sea de mínimo 7 días y máximo 10 días.',
                      ),
                      s.espacioPequeno(),

                      Text(
                        'Como puntos de buena práctica: ',
                        style: s.regular(context,c.infeccionTractoUrinarioVerde),
                      ),

                      BulletPointRegularGeneric(
                        colorText: c.tromboprofilaxisGris,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.chulo,
                        text: 'Considere extender la duración del tratamiento antimicrobiano en pacientes:',
                      ),
                      Container(
                        padding: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                          color: c.tromboprofilaxisGris,
                          colorText: c.tromboprofilaxisGris,
                          bullet: '- ',
                          text: 'Inmunosuprimidos.',
                        ),
                      ),
                      Container(
                        padding: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                          color: c.tromboprofilaxisGris,
                          colorText: c.tromboprofilaxisGris,
                          bullet: '- ',
                          text: 'Con presencia de colecciones aún no drenadas.',
                        ),
                      ),
                      Container(
                        padding: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                          color: c.tromboprofilaxisGris,
                          colorText: c.tromboprofilaxisGris,
                          bullet: '- ',
                          text: 'Usuarios de dispositivos urinarios.',
                        ),
                      ),
                      BulletPointRegularGeneric(
                        colorText: c.tromboprofilaxisGris,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.triangulito,
                        text: 'No realizar urocultivo posterior a la finalización del tratamiento '
                            'antimicrobiano en pacientes con respuesta clínica adecuada.',
                      ),

                      s.espacio(),

                      VerImagen('assets/InfeccionTractoUrinario/PielonefritisComplicadaTabla.png', 1, 't2'),


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

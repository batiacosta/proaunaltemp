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
class TratamientoCistitisComplicada extends StatefulWidget {
  const TratamientoCistitisComplicada({Key key}) : super(key: key);

  @override
  _TratamientoCistitisComplicadaState createState() => _TratamientoCistitisComplicadaState();
}

class _TratamientoCistitisComplicadaState extends State<TratamientoCistitisComplicada> {
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
                  text: 'Tratamiento antimicrobiano cistitis complicada',
                  color: c.infeccionTractoUrinarioAmarillo,
                ),
                Container(
                  color: c.white,
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      s.espacio(),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Se sugiere',
                          style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      s.espacio(),
                      Container(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '✓ ',
                              style: s.regularBold(context, c.infeccionTractoUrinarioVerde),
                            ),
                            Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Como primera opción en pacientes con tasa de filtración glomerular estimada (TFGe) ≥ 45 ml/min: ',
                                        style: s.regular(context, c.infeccionTractoUrinarioVerde),
                                      ),
                                      TextSpan(
                                        text: 'Nitrofurantoina.',
                                        style: s.regular(context, c.black),
                                      ),
                                    ]
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      s.espacio(),
                      Container(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '✓ ',
                              style: s.regularBold(context, c.infeccionTractoUrinarioVerde),
                            ),
                            Expanded(
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Como alternativa: ',
                                          style: s.regular(context, c.infeccionTractoUrinarioVerde),
                                        ),
                                        TextSpan(
                                          text: 'Fosfomicina-trometamol.',
                                          style: s.regular(context, c.black),
                                        ),
                                      ]
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                      s.espacio(),
                      Container(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '✓ ',
                              style: s.regularBold(context, c.infeccionTractoUrinarioVerde),
                            ),
                            Expanded(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Como alternativa en pacientes con manejo intrahospitalario: ',
                                          style: s.regular(context, c.infeccionTractoUrinarioVerde),
                                        ),
                                        TextSpan(
                                          text: 'Cefalosporina de primera generación (cefazolina IV).',
                                          style: s.regular(context, c.black),
                                        ),
                                      ]
                                  ),
                                )
                            )
                          ],
                        ),
                      ),

                      s.espacio(),
                      s.espacio(),
                      Text(
                        'Como puntos de buena práctica: ',
                        style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'No usar como tratamiento antimicrobiano empírico: amoxicilina, amoxicilina/clavulanato, '
                            'ampicilina, ampicilina/sulbactam, trimetoprim/sulfametoxazol o fluoroquinolonas.',
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Si se dispone del resultado de urocultivo y antibiograma tomado en los últimos 3 meses, '
                            'se puede utilizar para decidir el tratamiento antimicrobiano a instaurar.',
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Para la elección y ajuste de dosis de los antimicrobianos, estimar la TFG usando las '
                            'ecuaciones basadas en creatinina sérica.',
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Realizar seguimiento de los eventos adversos de los antimicrobianos empleados incluyendo '
                            'la resistencia bacteriana.',
                      ),
                      s.espacio(),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.black,
                        //align: 'j',
                        text: 'Revalorar a las 48 horas del inicio de la terapia antimicrobiana, y en caso de mala respuesta'
                            ' considerar posibles causas o diagnósticos adicionales.',
                      ),
                      s.espacio(),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.black,
                        //align: 'j',
                        text: 'En pacientes con evolución clínica favorable, mantener la terapia antimicrobiana empírica, '
                            'independientemente del reporte del antibiograma aun cuando se presente resistencia al antimicrobiano instaurado.',
                      ),
                      s.espacio(),
                      BulletPointRegular(
                        color: c.infeccionTractoUrinarioVerde,
                        colorText: c.black,
                        //align: 'j',
                        text: 'Ajustar el tratamiento antimicrobiano de acuerdo con el resultado del urocultivo '
                            'y el antibiograma, en cuanto esté disponible, '
                            'usando el antibiótico de espectro más estrecho posible.',
                      ),

                      s.espacio(),s.espacio(),

                      Text(
                        'Vía de administración, se sugiere: ',
                        style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.chulo,
                        //align: 'j',
                        text: 'Emplear como primera línea el uso de antimicrobianos orales, teniendo en cuenta '
                            'la tolerancia a la vía oral y la gravedad de la infección.',
                      ),
                      s.espacio(),s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.chulo,
                        text: ' En pacientes con tratamiento intravenoso, revalorar '
                            'a las 48 horas de inicio de la terapia antimicrobiana, '
                            'para considerar la posibilidad del cambio a antimicrobianos orales.',
                      ),
                      s.espacio(),

                      Text(
                        'Duración del tratamiento antimicrobiano, se sugiere:',
                        style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.chulo,
                        text: 'En mujeres postmenopáusicas en tratamiento con nitrofurantoína o cefalosporina: 5 días.',
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.chulo,
                        //align: 'j',
                        text: 'En pacientes hombres o en pacientes con IVU baja asociada a catéter: 7 días.',
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.chulo,
                        text: '	Fosfomicina-trometamol: Una dosis única.',
                      ),

                      s.espacio(),s.espacio(),

                      Text(
                        'Como puntos de buena práctica: ',
                        style: s.regularBold(context,c.infeccionTractoUrinarioVerde),
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'Considere extender la duración del tratamiento antimicrobiano en pacientes:',
                      ),

                      Container(
                        padding: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                          color: c.black,
                          colorText: c.black,
                          bullet: '- ',
                          text: 'Inmunosuprimidos.',
                        ),
                      ),
                      Container(
                        padding: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                          color: c.black,
                          colorText: c.black,
                          bullet: '- ',
                          text: 'Con presencia de colecciones aún no drenadas.',
                        ),
                      ),
                      Container(
                        padding: s.margenIzquierdo(context),
                        child: BulletPointRegularGeneric(
                          color: c.black,
                          colorText: c.black,
                          bullet: '- ',
                          text: 'Usuarios de dispositivos urinarios.',
                        ),
                      ),
                      s.espacio(),
                      BulletPointRegularGeneric(
                        colorText: c.black,
                        color: c.infeccionTractoUrinarioVerde,
                        bullet: s.punto,
                        text: 'No realizar urocultivo posterior a la finalización del tratamiento antimicrobiano '
                            'en pacientes con respuesta clínica adecuada.',
                      ),

                      s.espacio(),

                      VerImagen('assets/InfeccionTractoUrinario/CistitisComplicadaTabla.png', 1, 't2'),


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

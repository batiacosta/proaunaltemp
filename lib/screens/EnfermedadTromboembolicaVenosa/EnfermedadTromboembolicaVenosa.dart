

import 'package:acin/ReusableWidgets/BulletPointBold.dart';
import 'package:acin/ReusableWidgets/BulletPointRegular.dart';
import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/RoundedContainer.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/manipularImagen.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
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
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/Tromboprofilaxis.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class EnfermedadTromboembolicaVenosa extends StatefulWidget {
  EnfermedadTromboembolicaVenosa({Key key}) : super(key: key);

  @override
  State<EnfermedadTromboembolicaVenosa> createState() => _EnfermedadTromboembolicaVenosaState();
}

class _EnfermedadTromboembolicaVenosaState extends State<EnfermedadTromboembolicaVenosa> {
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

        },
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
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
        )
    );
  }

  Widget cuerpo(context){
    return new Container(
      color: colorClaro,
      child: ListView(
        children: [

          Headers(colorMedio, "TROMBOPREVENCIÓN", "assets/m7.png"),

          Container(
            margin: s.margenNormal(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Volver(2, "/MainMenu"),
                RichText(
                  textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Frecuente",
                          style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                        ),
                        TextSpan(
                            text: ", 350.000-900.000 nuevos casos anuales en EE.UU.",
                            style: s.regular(context, c.black)
                        ),
                      ]
                    ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Letal",
                            style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                        ),
                        TextSpan(
                            text: ", con 3% de mortalidad.",
                            style: s.regular(context, c.black)
                        ),
                      ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Mórbida",
                            style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                        ),
                        TextSpan(
                            text: ", secuelas en 60% de los pacientes.",
                            style: s.regular(context, c.black)
                        ),
                      ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Prevenible",
                            style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                        ),
                        TextSpan(
                            text: ", reduce hasta 70% con adecuadas conductas.",
                            style: s.regular(context, c.black)
                        ),
                      ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Recurrente",
                            style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                        ),
                        TextSpan(
                            text: ", en un 10-30%.",
                            style: s.regular(context, c.black)
                        ),
                      ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Impacto económico",
                            style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                        ),
                        TextSpan(
                            text: ", generando costos a paciente y sus familias.",
                            style: s.regular(context, c.black)
                        ),
                      ]
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    InkWell(
                      child: Container(
                        padding: s.margenNormal(context),
                        color: c.enfermedadTromboembolicaVenosaRojoCabecera,
                        child: Text('Ver gráfica', style: s.regularItalic(context, c.white)),
                      ),
                      onTap: ()=> Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => new ManipularImagen('assets/EnfermedadTromboembolicaVenosa/Grafica1.png'))),
                    ),
                  ],
                ),
                s.espacio(),
                Text(
                    'MANEJO INTEGRAL DE LA TROMBO PREVENCIÓN',
                  textAlign: TextAlign.center,
                  style: s.h1Bold(context, c.enfermedadTromboembolicaVenosaRojoCabecera,
                  ),
                ),
                s.espacio(),
                InkWell(
                  child: RoundedContainer(
                    color: c.enfermedadTromboembolicaVenosaRosado,
                    text: 'PREHOSPITALARIA',
                    colorText: c.white,
                  ),
                  onTap: ()=> setState(()=> _state[0] = !_state[0]),
                ),
                _prehospitalaria(),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainer(
                    color: c.enfermedadTromboembolicaVenosaNaranja,
                    text: 'INTRAHOSPITALARIA',
                    colorText: c.white,
                  ),
                  onTap: ()=> setState(()=> _state[1] = !_state[1]),
                ),
                _intrahospitalaria(),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainer(
                    color: c.enfermedadTromboembolicaVenosaRojo,
                    text: 'ALTA HOSPITALARIA',
                    colorText: c.white,
                  ),
                  onTap: ()=> setState(()=> _state[2] = !_state[2]),
                ),
                _altaHospitalaria(),
                s.espacioPequeno(),
                InkWell(
                  child: RoundedContainer(
                    color: c.enfermedadTromboembolicaVenosaAmarillo,
                    text: 'CONCIDERACIONES GENERLES',
                    colorText: c.white,
                  ),
                  onTap: ()=> setState(()=> _state[3] = !_state[3]),
                ),
                _consideracionesGenerales(),
                s.espacio(),
                
                InkWell(
                  child: Image.asset('assets/EnfermedadTromboembolicaVenosa/Tromboprofilaxis.png'),
                  onTap: ()=> Navigator.pushNamed(context, '/Tromboprofilaxis'),
                ),

                Volver(2, "/MainMenu"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _prehospitalaria() {
    if(_state[0]){
      return Container(
        padding: s.margenDelgado(context),
        decoration: BoxDecoration(
          color: c.white,
          borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
        ),
        child: Column(
          children: [
            s.espacio(),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Historia completa y examen físico ',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Evaluar el riesgo de TEV inicial. ',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Evaluar el riesgo de sangrado (Pacientes, procedimiento). ',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Abordar factores de riesgo modificables: ',
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Riesgo de trombosis:',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Fomentar la deambulación y el peso saludable. ',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Evitar la deshidratación.',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Suspensión del tabaquismo.',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Suspender los medicamentos riesgo de trombosis (4 VMB).',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Riesgo de sangrado:',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Control presión arterial. ',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRosado,
                colorText: c.black,
                text: 'Suspender los medicamentos con riesgo de sangrado. ',
              ),
            ),

            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Seleccionar la estrategia de profilaxis. ',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Revalorar cada 24 a 48 horas posteriores a la admisión. ',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRosado,
              colorText: c.black,
              text: 'Ajustar la estrategia si es necesario. ',
            ),
            s.espacio(),
          ],
        ),
      );
    }else{return Container();}
  }

  Widget _intrahospitalaria() {
    if(_state[1]){
      return Container(
        padding: s.margenDelgado(context),
        decoration: BoxDecoration(
          color: c.white,
          borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
        ),
        child: Column(
          children: [
            s.espacio(),
            BulletPointBold(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.enfermedadTromboembolicaVenosaNaranja,
              text: 'Preoperatorio',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '• ',
                  style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja,),
                ),
                Expanded(
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Informar a paciente y familiares: ",
                                style: s.regularBold(context, c.black)
                            ),
                            TextSpan(
                                text: "Razón por la que se les realiza una evaluación de riesgo de TEV y hemorragia. ",
                                style: s.regular(context, c.black)
                            ),
                          ]
                      ),
                    ),
                )
              ],
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Iniciar estrategia de profilaxis antes del procedimiento.',
            ),
            s.espacio(),

            BulletPointBold(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.enfermedadTromboembolicaVenosaNaranja,
              text: 'Intraoperatorio',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Abordar los factores de riesgo modificables.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Limitar el tiempo quirúrgico.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Considerar cirugía menos invasiva (laparoscópica vs abierta).',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Evaluaciones regulares de TEV y riesgo de sangrado.',
            ),
            s.espacio(),

            BulletPointBold(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.enfermedadTromboembolicaVenosaNaranja,
              text: 'Postoperatorio',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Abordar los factores de riesgo modificables.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Deambulación temprana o terapia física.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Evitar la deshidratación.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Evitar la hipertensión severa.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Aplazar la cirugía hasta que los agentes antitrombóticos no sean necesarios.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Cambios de posición si debe permanecer más de 8 horas.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaNaranja,
              colorText: c.black,
              text: 'Asegurar el cumplimiento de la profilaxis.',
            ),
            s.espacio(),

            s.espacio(),
          ],
        ),
      );
    }else{return Container();}
  }

  Widget _altaHospitalaria() {
    if(_state[2]){
      return Container(
        padding: s.margenDelgado(context),
        decoration: BoxDecoration(
            color: c.white,
            borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
        ),
        child: Column(
          children: [
            s.espacio(),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRojo,
              colorText: c.black,
              text: 'Definir la duración de profilaxis.',
            ),
            BulletPointBold(
              color: c.enfermedadTromboembolicaVenosaRojo,
              colorText: c.enfermedadTromboembolicaVenosaRojo,
              text: 'Educación del paciente/familia:',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRojo,
              colorText: c.black,
              text: 'Hidratación, actividad física y movilidad.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRojo,
              colorText: c.black,
              text: 'Signos, síntomas de TEV y sangrado',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRojo,
              colorText: c.black,
              text: 'Los riesgos de la persona y las posibles consecuencias del TEV y sangrado.',
            ),
            BulletPointRegular(
              color: c.enfermedadTromboembolicaVenosaRojo,
              colorText: c.black,
              text: 'Si usa medias: ',
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRojo,
                colorText: c.black,
                text: 'Por motivos de higiene pueden quitarlos y reemplazarlos, o tener a alguien disponible que pueda hacerlo por ellos.',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRojo,
                colorText: c.black,
                text: 'Signos de consulta: Marcas en la piel, ampollas o decoloración, particularmente sobre los talones y las prominencias óseas.',
              ),
            ),
            Container(
              margin: s.margenIzquierdo(context),
              child: BulletPointRegular(
                color: c.enfermedadTromboembolicaVenosaRojo,
                colorText: c.black,
                text: 'Saber a quién contactar si hay un problema saber cuándo dejar de usarlos. ',
              ),
            ),
            s.espacio(),
          ],
        ),
      );
    }else{return Container();}
  }

  Widget _consideracionesGenerales() {
    if(_state[3]){
      return Container(
        padding: s.margenDelgado(context),
        decoration: BoxDecoration(
            color: c.white,
            borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
        ),
        child: Column(
          children: [
            s.espacio(),
            Image.asset('assets/EnfermedadTromboembolicaVenosa/Infografia1.png'),
            s.espacio(),
          ],
        ),
      );
    }else{return Container();}
  }

}

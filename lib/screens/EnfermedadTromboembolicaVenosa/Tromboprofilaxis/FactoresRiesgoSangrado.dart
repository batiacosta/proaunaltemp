

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

class FactoresRiesgoSangrado extends StatefulWidget {
  String atrasRoute;
  FactoresRiesgoSangrado({Key key, this.atrasRoute}) : super(key: key);

  @override
  State<FactoresRiesgoSangrado> createState() => _FactoresRiesgoSangradoState();
}

class _FactoresRiesgoSangradoState extends State<FactoresRiesgoSangrado> {
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
                  color: c.enfermedadTromboembolicaVenosaRojo,
                  colorText: c.white,
                  text: 'FACTORES RIESGO SANGRADO',
                ),
                s.espacio(),

                Text(
                  'Generales',
                  style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja),
                ),

                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Sangrado activo',
                ),
                Container(
                  margin: s.margenIzquierdo(context),
                  child: BulletPointRegular(
                    color: c.enfermedadTromboembolicaVenosaRosado,
                    colorText: c.black,
                    text: 'Sangrado mayor previo',
                  ),
                ),
                Container(
                  margin: s.margenIzquierdo(context),
                  child: BulletPointRegular(
                    color: c.enfermedadTromboembolicaVenosaRosado,
                    colorText: c.black,
                    text: 'Gastrointestinal 7 días',
                  ),
                ),
                Container(
                  margin: s.margenIzquierdo(context),
                  child: BulletPointRegular(
                    color: c.enfermedadTromboembolicaVenosaRosado,
                    colorText: c.black,
                    text: 'Intracraneal 12 meses',
                  ),
                ),
                Container(
                  margin: s.margenIzquierdo(context),
                  child: BulletPointRegular(
                    color: c.enfermedadTromboembolicaVenosaRosado,
                    colorText: c.black,
                    text: 'Cirugía intraocular reciente 2 semanas',
                  ),
                ),
                Container(
                  margin: s.margenIzquierdo(context),
                  child: BulletPointRegular(
                    color: c.enfermedadTromboembolicaVenosaRosado,
                    colorText: c.black,
                    text: 'Otros 3 meses',
                  ),
                ),

                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Sangrado previo de un procedimiento similar',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Trastorno hemorrágico no tratado Insuficiencia renal o hepática grave - Trombocitopenia (<50.000/<100.000 y decreciente',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Accidente cerebrovascular agudo',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Hipertensión no controlada (>180/120 mm Hg)',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Punción lumbar, anestesia epidural o espinal dentro de las 4 horas previas o próximas 12 horas.',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Uso de anticoagulantes, antiplaquetarios, AINE o fármacos trombolíticos ',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'La epistaxis y el sangrado menstrual NO son contraindicaciones para tromboprofilaxis farmacológica',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Procedimientos en los que las complicaciones pueden tener especial gravedad consecuencias',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Craneotomía',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Cirugía de columna',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Trauma espinal',
                ),
                BulletPointRegular(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Procedimientos reconstructivos con colgajo',
                ),
                s.espacio(),

                Text(
                  'Relacionada con procedimiento',
                  style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja),
                ),
                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Cirugía abdominal',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Sexo masculino',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Nivel de hemoglobina preoperatorio <13 g/dL',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Neoplasia',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Cirugía compleja (2 procedimientos, disección difícil, más de 1 anastomosis)',
                ),

                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Pancreaticoduodenectomía',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Sepsis',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Fuga pancreática',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Sangrado centinela',
                ),

                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Resección hepática',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Número de segmentos',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Resección extrahepática concomitante de órganos',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Neoplasia primaria de hígado',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Nivel de hemoglobina preoperatorio más bajo Recuento de plaquetas (Preoperatorio anemia/trombocitopenia)',
                ),

                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Cirugía cardíaca',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Mayor edad',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'IMC >25 kg/m2',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Tratamiento antiagregante plaquetario concomitante',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Cirugía no electiva libre',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Mayor tiempo de derivación',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Colocación 5 injertos',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Operación diferente a CABG',
                ),

                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Cirugía Torácica',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Neumonectomía',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Resección extendida',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Neoplasia maligna primaria o metastásica',
                ),

                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Cirugía Ortopédica',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Dificultad para controlar el sangrado quirúrgico',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Disección quirúrgica extensa',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Cirugía de revisión',
                ),

                BulletPointBold(
                  color: c.enfermedadTromboembolicaVenosaNaranja,
                  colorText: c.black,
                  text: 'Cirugía traumatológica',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Lesiones graves en la cabeza',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Lesiones de hígado o bazo tratadas de forma conservadora',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Fractura de columna vertebral con hematoma epidural',
                ),
                BulletPointRegularGeneric(
                  color: c.black,
                  colorText: c.black,
                  bullet: '-',
                  text: 'Fracturas pélvicas',
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

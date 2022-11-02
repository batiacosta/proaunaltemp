

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
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

enum Edad { cuarenta, cuarentaSecenta, secentaSetentaCuatro, setentaCinco }

Map<Edad, int> edadValores = <Edad, int>{
  Edad.cuarenta:  0,
  Edad.cuarentaSecenta: 1,
  Edad.secentaSetentaCuatro: 2,
  Edad.setentaCinco: 3
};
class CalculadoraCaprini extends StatefulWidget {
  String atrasRoute;
  CalculadoraCaprini({Key key, this.atrasRoute}) : super(key: key);

  @override
  State<CalculadoraCaprini> createState() => _CalculadoraCapriniState();
}

class _CalculadoraCapriniState extends State<CalculadoraCaprini> {
  ColorPalette c = ColorPalette();
  GeneralSettings s = new GeneralSettings();
  Color colorClaro;
  Color colorMedio;

  double resulado;
  List<int> valorGuardado = [
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    ];
  List<bool> switches = [
    false, false, false, false, false, false, false, false, false, false,
    false, false, false, false, false, false, false, false, false, false,
    false, false, false, false, false, false, false, false, false, false,
    false, false, false, false, false, false, false, false, false, false,
  ];
  int edadNumber = 0;

  int rangoEdad;
  int sex = 0;

  int resultadoFinal = 0;


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
            width: double.infinity,
            margin: s.margenNormal(context),
            child: RoundedContainer(
              text: 'Calculadora Caprini',
              colorText: c.white,
              color: c.tromboprofilaxisAzulClaroIntenso,
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
                  color: c.tromboprofilaxisAzulClaroIntenso,
                  padding: s.margenDelgado(context),
                  child: Text(
                      'Datos generales',
                    style: s.regularBold(context, c.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      right: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      bottom: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Edad (años)", style: s.regularBold(context, c.black),),
                      CupertinoSlidingSegmentedControl(
                        groupValue: valorGuardado[0],
                        children: {
                          0: Text("≤ 40", style: s.regular(context, c.black),),
                          1: Text("41 - 60", style: s.regular(context, c.black),),
                          2: Text("61 - 74", style: s.regular(context, c.black),),
                          3: Text("75 +", style: s.regular(context, c.black),),
                        },
                        onValueChanged: (value){
                          setState(() {
                            valorGuardado[0] = value;
                          });
                          _calcular();
                        },
                      ),
                      s.espacioPequeno(),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      right: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      bottom: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sexo", style: s.regularBold(context, c.black),),
                      CupertinoSlidingSegmentedControl(
                        groupValue: sex,
                        children: {
                          0: Text("Hombre", style: s.regular(context, c.black),),
                          1: Text("Mujer", style: s.regular(context, c.black),),
                        },
                        onValueChanged: (value){
                          setState(() {
                            sex = value;
                          });
                          _calcular();
                        },
                      ),
                      s.espacioPequeno(),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      right: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      bottom: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tipo de cirugía:", style: s.regularBold(context, c.black),),
                      RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'A ',
                                style: s.regularBold(context, c.tromboprofilaxisAzulClaroIntenso)
                              ),
                              TextSpan(
                                  text: 'Ninguna',
                                  style: s.regular(context, c.black)
                              ),
                            ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'B ',
                                    style: s.regularBold(context, c.tromboprofilaxisAzulClaro)
                                ),
                                TextSpan(
                                    text: 'Menor',
                                    style: s.regular(context, c.black)
                                ),
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'C ',
                                    style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja)
                                ),
                                TextSpan(
                                    text: 'Mayor >45 minutos, laparoscópica >45 minutos, o artostrópica',
                                    style: s.regular(context, c.black)
                                ),
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'D ',
                                    style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera)
                                ),
                                TextSpan(
                                    text: 'Electiva mayor. Extremidad inferior artoplástica',
                                    style: s.regular(context, c.black)
                                ),
                              ]
                          )
                      ),
                      CupertinoSlidingSegmentedControl(
                        groupValue: valorGuardado[2],
                        children: {
                          0: Text("  A  ", style: s.regularBold(context, c.tromboprofilaxisAzulClaroIntenso),),
                          1: Text("  B  ", style: s.regularBold(context, c.tromboprofilaxisAzulClaro),),
                          2: Text("  C  ", style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja),),
                          3: Text("  B  ", style: s.regularBold(context, c.enfermedadTromboembolicaVenosaRojoCabecera),),
                        },
                        onValueChanged: (value){
                          setState(() {
                            valorGuardado[2] = value;
                          });
                          _calcular();
                        },
                      ),
                      s.espacioPequeno(),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  color: c.tromboprofilaxisAzulClaroIntenso,
                  padding: s.margenDelgado(context),
                  child: Text(
                    'Eventos recientes ( <1 mes)',
                    style: s.regularBold(context, c.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                filas(context, 0, 3, 'Cirugía mayor', 1),
                filas(context, 0, 4, 'CHF', 1),
                filas(context, 0, 5, 'Septicemia', 1),
                filas(context, 0, 6, 'Neumonía', 1),
                filas(context, 0, 7, 'Embarazo o postparto', 1),
                filas(context, 0, 8, 'Escayola inmovilizadora', 2),
                filas(context, 0, 9, 'Fractura de cadera, pelvis o pierna', 5),
                filas(context, 0, 10, 'Infarto', 5),
                filas(context, 0, 11, 'Trauma múltiple', 5),
                filas(context, 0, 12, 'Lesión aguda de la médula espinal que causa parálisis', 5),

                Container(
                  width: double.infinity,
                  color: c.tromboprofilaxisAzulClaroIntenso,
                  padding: s.margenDelgado(context),
                  child: Text(
                    'Enfermedad venosa o trastorno de la coagulación',
                    style: s.regularBold(context, c.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                filas(context, 0, 13, 'Venas varicosas', 1),
                filas(context, 0, 14, 'Edema de miembros inferiores', 1),
                filas(context, 0, 15, 'Acceso venoso central', 2),
                filas(context, 0, 16, 'Historial de DVT/PE', 3),
                filas(context, 0, 17, 'Historial familiar de trombosis', 3),
                filas(context, 0, 18, 'Factor V Leiden positivo ', 3),
                filas(context, 0, 19, 'Protrombina 20210A positiva', 3),
                filas(context, 0, 20, 'Homocisteína sérica elevada', 3),
                filas(context, 0, 21, 'Anticoagulante Lúpico positivo', 3),
                filas(context, 0, 22, 'Anticuerpos anticardiolipina elevados', 3),
                filas(context, 0, 23, 'Trombocitopenia inducida por heparina', 3),
                filas(context, 0, 24, 'Otras trombofilias congénitas o adquiridas', 3),
                Container(
                  width: double.infinity,
                  padding: s.margenDelgado(context),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      right: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                      bottom: BorderSide(
                        color: c.tromboprofilaxisBackground,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mobilidad:", style: s.regularBold(context, c.black),),
                      Text(
                        "El reposo en cama se define como no poder caminar 30 pies (10 metros) "
                            "a la vez. Los privilegios para ir al baño o caminar en la habitación "
                            "no se consideran deambulación. Caminar esta distancia reduce el riesgo "
                            "de TEV en un 50 %. Haga clic aquí para ver el VÍDEO. La mortalidad por "
                            "EP aumentó para aquellos inmóviles durante más de 4 días.", style: s.small(context, c.black),),
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Normal ',
                                    style: s.regularBold(context, c.tromboprofilaxisAzulClaroIntenso)
                                ),
                                TextSpan(
                                    text: 'Fuera de cama',
                                    style: s.regular(context, c.black)
                                ),
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Reposo ',
                                    style: s.regularBold(context, c.tromboprofilaxisAzulClaro)
                                ),
                                TextSpan(
                                    text: 'Paciente médico actualmente en reposo en cama',
                                    style: s.regular(context, c.black)
                                ),
                              ]
                          )
                      ),
                      RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Confinado ',
                                    style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja)
                                ),
                                TextSpan(
                                    text: 'Paciente confinado a la cama > 72 horas',
                                    style: s.regular(context, c.black)
                                ),
                              ]
                          )
                      ),
                      CupertinoSlidingSegmentedControl(
                        groupValue: valorGuardado[25],
                        children: {
                          0: Text("Normal", style: s.regularBold(context, c.tromboprofilaxisAzulClaroIntenso),),
                          1: Text("Reposo", style: s.regularBold(context, c.tromboprofilaxisAzulClaro),),
                          2: Text("Confinado", style: s.regularBold(context, c.enfermedadTromboembolicaVenosaNaranja),),
                        },
                        onValueChanged: (value){
                          setState(() {
                            valorGuardado[25] = value;
                          });
                          _calcular();
                        },
                      ),
                      s.espacioPequeno(),
                    ],
                  ),
                ),


                Container(
                  width: double.infinity,
                  color: c.tromboprofilaxisAzulClaroIntenso,
                  padding: s.margenDelgado(context),
                  child: Text(
                    'Otro historial presente y pasado',
                    style: s.regularBold(context, c.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                filas(context, 0, 26, 'Antecedentes de enfermedad inflamatoria intestinal', 1),
                filas(context, 0, 27, 'BMI >25', 1),
                filas(context, 0, 28, 'Acute MI', 1),
                filas(context, 0, 29, 'COPD', 1),
                filas(context, 0, 30, 'Neoplasia presente o previa', 2),
                filas(context, 0, 31, 'Otros factores de riesgo', 1),
                filas(context, 0, 32, 'En anticonceptivos orales o reemplazo hormonal', 1),
                filas(context, 0, 33, 'Antecedentes de muerte fetal inexplicada, ≥3 abortos espontáneos o parto prematuro con toxemia o bebé con restricción del crecimiento', 1),

                RoundedContainerRegularBold(
                  color: c.tromboprofilaxisAzulClaroIntenso,
                  colorText: c.white,
                  text: 'Caprini: $resultadoFinal',
                ),

                s.espacio(),
              ],
            ),
          ),

        ],
      ),
    );
  }

  void _calcular(){
    int resultado = 0;
    for(int valor in valorGuardado){
      resultado = resultado + valor;
    }
    setState(() {
      resultadoFinal = resultado;
    });
    _setResult();
  }

  Widget filas(context, int tipo, int arrayPos, String texto, int puntos){
    // Tres tipos,
    if(tipo == 0){
      return new Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: c.tromboprofilaxisBackground,
            ),
            right: BorderSide(
              color: c.tromboprofilaxisBackground,
            ),
            bottom: BorderSide(
              color: c.tromboprofilaxisBackground,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
                width:  MediaQuery.of(context).size.width*0.52,
                padding: EdgeInsets.only(
                    left: 10,
                    right: 5
                ),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      texto,
                      style: s.regular(context, c.black),
                    ),
                  ),
                )
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.2,
              child: Transform.scale(
                scale: 0.6,
                child: CupertinoSwitch(
                  trackColor: Colors.white,
                  activeColor: c.tromboprofilaxisAzulClaroIntenso,
                  value: switches[arrayPos],
                  onChanged: (bool value) { setState(() {
                    switches[arrayPos] = value;
                    if(value == true){
                      valorGuardado[arrayPos] = puntos;
                    }else{
                      valorGuardado[arrayPos] = 0;
                    }
                  });
                  _calcular();
                    },
                ),
              ),
            ),
          ],
        ),
      );
    }else if(tipo == 1){
      return new Container(
        decoration: BoxDecoration(
          color: Color(0xffF5FBFE),
          border: Border(
            //color: Colors.red,  // red as border color
            left: BorderSide(
              color: Color(0xff6699C1),
            ),
            right: BorderSide(
              color: Color(0xff6699C1),
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
                width:  MediaQuery.of(context).size.width*0.52,
                padding: EdgeInsets.only(
                    left: 10,
                    right: 5
                ),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      texto,
                      style: s.regular(context, c.black),
                    ),
                  ),
                )
            ),
            Container(
                width: MediaQuery.of(context).size.width*0.15,
                padding: EdgeInsets.only(
                    right: 5
                ),
                height: 60,
                decoration: BoxDecoration(
                  border: Border(
                    //color: Colors.red,  // red as border color
                    left: BorderSide(
                      color: Color(0xff6699C1),
                    ),
                    right: BorderSide(
                      color: Color(0xff6699C1),
                    ),
                  ),
                ),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      '$puntos',
                      textAlign: TextAlign.center,
                      style: s.regular(context, c.black),
                    ),
                  ),
                )
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.15,
              child: Transform.scale(
                scale: 0.6,
                child: CupertinoSwitch(
                  trackColor: Colors.white,
                  activeColor: c.tromboprofilaxisAzulClaroIntenso,
                  value: switches[arrayPos],
                  onChanged: (bool value) { setState(() {
                    switches[arrayPos] = value;
                    if(value == true){
                      valorGuardado[arrayPos] = puntos;
                    }else{
                      valorGuardado[arrayPos] = 0;
                    }
                  }); },
                ),
              ),
            ),
          ],
        ),
      );
    }
    else if(tipo==3){
      return new Container(
        decoration: BoxDecoration(
          color: Color(0xffF5FBFE),
          border: Border(
            //color: Colors.red,  // red as border color
            left: BorderSide(
              color: Color(0xff6699C1),
            ),
            right: BorderSide(
              color: Color(0xff6699C1),
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
                width:  MediaQuery.of(context).size.width*0.52,
                padding: EdgeInsets.only(
                    left: 10,
                    right: 5
                ),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      texto,
                      style: s.regular(context, c.black),
                    ),
                  ),
                )
            ),
            Container(
                width: MediaQuery.of(context).size.width*0.15,
                padding: EdgeInsets.only(
                    right: 5
                ),
                height: 60,
                decoration: BoxDecoration(
                  border: Border(
                    //color: Colors.red,  // red as border color
                    left: BorderSide(
                      color: Color(0xff6699C1),
                    ),
                    right: BorderSide(
                      color: Color(0xff6699C1),
                    ),
                  ),
                ),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      '$edadNumber',
                      textAlign: TextAlign.center,
                      style: s.regular(context, c.black),
                    ),
                  ),
                )
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.15,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "0...",
                  isDense: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: colorClaro)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: colorClaro)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    setState(() {
                      edadNumber = 0;
                    });
                    return 'Obligatorio';
                  }
                  return null;
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value){
                  setState(() {
                    String valor = value;
                    if(valor==""){
                      edadNumber = 0;
                    }else{
                      edadNumber = int.parse(valor);
                    }

                  });
                },
              ),
            ),
          ],
        ),
      );
    }
    else{
      return Container();
    }

  }

  _setResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('Caprini', resultadoFinal);
  }

}

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/manejo_ambulatorio_hospitalario_NAC_tratamiento.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
class PSI extends StatefulWidget {
  const PSI({Key key}) : super(key: key);

  @override
  _PSIState createState() => _PSIState();
}

class _PSIState extends State<PSI> {
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  List<bool> switches = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false ];
  List<bool> switches2 = [false, false, false, false, false, false, false, false, false, false ];
  List<int> valorGuardad = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,];
  int edadNumber = 0;
  String resultado = "";
  bool isResultado = false;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/NAC":(BuildContext context)=>ManejoAmbulatorioUHospitalarioNACTratamiento(),
        },
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
              return new Scaffold(
                  drawer: MenuDesplegado(),
                  appBar: BarraSuperior().Barra(context, false),
                  bottomNavigationBar: BarraInferior(),
                  backgroundColor: colorMedio,
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
          Headers(colorMedio, "Neumonía adquirida\nen comunidad", "assets/NeumoniaAdquiridaEnComunidad/titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/NAC"),
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                ImagenEncabezadoSeccion("assets/NeumoniaAdquiridaEnComunidad/tratamiento.png"),
                menuDiagnostico(context, "Manejo ambulatorio y hospitalario"),
                Container(height: MediaQuery.of(context).size.height*0.025,),

                Container(
                  color: Color(0xff57A695),
                  width: double.infinity,
                  padding: paddingNormal(),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Community-Acquired ",
                            style: _estiloLetraWhite(context),
                          ),
                          TextSpan(
                            text: "Pneumonia ",
                            style: _estiloLetraWhiteItalic(context),
                          ),
                          TextSpan(
                            text: "Severity Index",
                            style: _estiloLetraWhite(context),
                          ),
                        ]
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6699C1),
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
                          child: Center(
                            child: Container(
                              child: Text(
                                "Criterio",
                                style: _estiloLetraWhite(context),
                              ),
                            ),
                          )
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width*0.31,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border(
                              //color: Colors.red,  // red as border color
                              left: BorderSide(
                                color: Color(0xff3B77AA),
                              ),

                            ),
                          ),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Puntos',
                                textAlign: TextAlign.right,
                                style: _estiloLetraWhite(context),
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                    filas(context, 0, 0, 'Es mujer', -10),
                    filas(context, 3, 1, 'Edad', -10),
                    filas(context, 0, 2, 'Residente de un hogar de ancianos', 10),
                    filas(context, 1, 3, 'Enfermedad neoplásica', 30),
                    filas(context, 0, 4, 'Enfermedad hepática', 20),
                    filas(context, 1, 5, 'Falla cardiaca congestiva', 10),
                    filas(context, 0, 6, 'Enfermedad cerebrovascular', 10),
                    filas(context, 1, 7, 'Enfermedad renal', 10),
                    filas(context, 0, 8, 'Estado mental alterado', 20),
                    filas(context, 1, 9, 'Frecuencia respiratoria ≥ 30/m', 20),
                    filas2(context, 0, 0, 'Presión arterial sistólica < 90 mm Hg', 20),
                    filas2(context, 1, 1, 'Temperatura < 35ºC o ≥ 39.9ºC', 15),
                    filas2(context, 0, 2, 'Pulso ≥ 124/min', 10),
                    filas2(context, 1, 3, 'pH arterial < 7.35', 30),
                    filas2(context, 0, 4, 'Nitrógeno ureico en sangre ≥ 30 mg/dL (11 mmol/L)', 20),
                    filas2(context, 1, 5, 'Sodio < 130 mmol/L', 20),
                    filas2(context, 0, 6, 'Glucosa ≥ 250 mg/dL (14 mmol/L) ', 10),
                    filas2(context, 1, 7, 'Hematocrito < 30%', 10),
                    filas2(context, 0, 8, 'PaO2 < 60 mm Hg o SaO2<90%', 10),
                    filas2(context, 1, 9, 'Derrame pleural', 10),

/*
                Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff57A695),),
                      ),
                      child:RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Calcular",
                                  style: _estiloLetraWhite(context)
                              ),
                            ]
                        ),
                      ),
                      onPressed: () => calcular(),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child:RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Limpiar",
                                  style: _estiloLetraWhite(context)
                              ),
                            ]
                        ),
                      ),
                      onPressed: () => limpiar(),
                    ),
                  ],
                ),
                */


                Container(height: MediaQuery.of(context).size.height*0.015,),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff57A695),),
                    ),
                    child:RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Calcular",
                                style: _estiloLetraWhite(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: () => calcular(),
                  ),
                ),
                resultadoW(context),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0971B8)),
                    ),
                    child:RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Limpiar",
                                style: _estiloLetraWhite(context)
                            ),
                          ]
                      ),
                    ),
                    onPressed: () => limpiar(),
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height*0.015,),
                Image(image: AssetImage("assets/NeumoniaAdquiridaEnComunidad/PSITablaNACTratamiento.png")),

                Container(height: MediaQuery.of(context).size.height*0.15,),
                Volver(1, "/NAC"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),
          //LogoFooter(2, colorMedio),
        ],
      ),
    );
  }
  void calcular(){
    int resultadoTemporal = 0;
    for(int i = 0; i<valorGuardad.length;i++){
      resultadoTemporal = resultadoTemporal + valorGuardad[i];
    }
    resultadoTemporal = resultadoTemporal + edadNumber;
    setState(
        (){
          isResultado = true;
          resultado = 'Resultado\n${resultadoTemporal.toString()}';
        }
    );
  }
  Widget resultadoW(context){
    if(isResultado==true){
      return new Container(
        width: double.infinity,
        color: colorMuyOscuro,
        child: Column(
          children: [
            Text(
              '$resultado',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Ancizar',
                fontSize:40,// MediaQuery.of(context).size.width * 0.04,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }else{
      return Container();
    }
  }

  void limpiar(){


    setState(() {
      isResultado = false;
      edadNumber = 0;
      resultado = "";
      for(int i=0; i<valorGuardad.length; i++){
        valorGuardad[i] = 0;
      }
      for(int i=0; i<switches.length; i++){
        switches[i] = false;
      }
      for(int i=0; i<switches2.length; i++){
        switches2[i] = false;
      }
    });
  }

  Widget filas(context, int tipo, int arrayPos, String texto, int puntos){
    // Tres tipos,
    if(tipo == 0){
      return new Container(
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
                    style: _estiloLetra1(context),
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
                    style: _estiloLetra1(context),
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
                  activeColor: colorOscuro,
                  value: switches[arrayPos],
                  onChanged: (bool value) { setState(() {
                    switches[arrayPos] = value;
                    if(value == true){
                      valorGuardad[arrayPos] = puntos;
                    }else{
                      valorGuardad[arrayPos] = 0;
                    }
                  }); },
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
                      style: _estiloLetra1(context),
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
                      style: _estiloLetra1(context),
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
                  activeColor: colorOscuro,
                  value: switches[arrayPos],
                  onChanged: (bool value) { setState(() {
                    switches[arrayPos] = value;
                    if(value == true){
                      valorGuardad[arrayPos] = puntos;
                    }else{
                      valorGuardad[arrayPos] = 0;
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
                      style: _estiloLetra1(context),
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
                      style: _estiloLetra1(context),
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

  Widget filas2(context, int tipo, int arrayPos, String texto, int puntos){
    // Tres tipos,
    if(tipo == 0){
      return new Container(
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
                      style: _estiloLetra1(context),
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
                      style: _estiloLetra1(context),
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
                  activeColor: colorOscuro,
                  value: switches2[arrayPos],
                  onChanged: (bool value) { setState(() {
                    switches2[arrayPos] = value;
                    if(value == true){
                      valorGuardad[10 + arrayPos] = puntos;
                    }else{
                      valorGuardad[10 + arrayPos] = 0;
                    }
                  }); },
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
                      style: _estiloLetra1(context),
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
                      style: _estiloLetra1(context),
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
                  activeColor: colorOscuro,
                  value: switches2[arrayPos],
                  onChanged: (bool value) { setState(() {
                    switches2[arrayPos] = value;
                    if(value == true){
                      valorGuardad[10 + arrayPos] = puntos;
                    }else{
                      valorGuardad[10 + arrayPos] = 0;
                    }
                  }); },
                ),
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

  Widget menuDiagnostico(context, String titulo){
    return new Container(
      color: colorOscuro,
      child: Column(
        children: [
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: titulo,
                        style: _estiloLetraTitulo(context)
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget divisorTitulado(context, String texto){
    return new Container(
      color: colorMedio,
      width: double.infinity,
      padding: paddingNormal(),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            children: [
              TextSpan(
                text: texto,
                style: _estiloLetraWhite(context),
              ),
            ]
        ),
      ),
    );
  }



  chulo(context){
    return TextSpan(
      text: "✓  ",
      style: _estiloLetraColorMedio(context),
    );
  }
  triangulito(context){
    return TextSpan(
      text: "➢  ",
      style: _estiloLetraColorMedio(context),
    );
  }
  rombo(context){
    return  TextSpan(
      text: "❖  ",
      style: _estiloLetraColorMedio(context),
    );
  }


  _estiloLetra1(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize:15,// MediaQuery.of(context).size.width * 0.04,
      color: colorDark,
    );
  }
  _estiloLetra1Italic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorDark,
        fontStyle: FontStyle.italic
    );
  }
  _estiloLetraChiquita(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.03,
      color: colorDark,
    );
  }
  _estiloLetraWhite(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: Colors.white,
    );
  }
  _estiloLetraWhiteItalic(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: Colors.white,
      fontStyle: FontStyle.italic
    );
  }
  _estiloLetraColorMedio(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorMedio,
    );
  }
  _estiloLetraColorMedioBold(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorOscuro,
        fontWeight: FontWeight.bold
    );
  }
  _estiloLetraTitulo(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.07,
        color: Colors.white);
  }

  paddingNormal(){
    return EdgeInsets.only(
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
      top: MediaQuery.of(context).size.width * 0.015,
      bottom: MediaQuery.of(context).size.width * 0.015,
    );
  }
  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08
    );
  }
}

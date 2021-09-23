import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/CRB65.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/CURB65.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/neumonia_adquirida_en_comunidad.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/psi.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class ManejoAmbulatorioUHospitalarioNACTratamiento extends StatefulWidget {
  const ManejoAmbulatorioUHospitalarioNACTratamiento({Key key}) : super(key: key);

  @override
  _ManejoAmbulatorioUHospitalarioNACTratamientoState createState() => _ManejoAmbulatorioUHospitalarioNACTratamientoState();
}

class _ManejoAmbulatorioUHospitalarioNACTratamientoState extends State<ManejoAmbulatorioUHospitalarioNACTratamiento> {
  @override
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/NAC":(BuildContext context)=>NeumoniaAdquiridaEnComunidad(),
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
          Headers(colorOscuro, "Neumonía adquirida\nen comunidad", "assets/NeumoniaAdquiridaEnComunidad/titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                //Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(1, "/NAC"),
                ImagenEncabezadoSeccion("assets/NeumoniaAdquiridaEnComunidad/tratamiento.png"),
                menuDiagnostico(context, "Manejo ambulatorio u hospitalario"),
                Container(height: MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Se recomienda:\n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          rombo(context),
                          TextSpan(
                            text: "Utilizar el juicio clínico acompañado del uso de una regla de predicción clínica validada sea PSI, CURB65 o CRB65, para evaluar la severidad y determinar la necesidad de hospitalización en adultos con diagnóstico de NAC .\n\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Como punto de buena práctica: \n",
                            style: _estiloLetraColorMedioBold(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Utilizar el juicio clínico acompañado del\n    uso de los criterios de gravedad \n    IDSA/ATS 2007 para determinar el nivel\n    de atención en hospitalización en\n    adultos con diagnóstico de NAC que no\n    requieren vasopresores o asistencia\n    respiratoria mecánica.\n",
                            style: _estiloLetra1(context),
                          ),
                          TextSpan(
                            text: "•  ",
                            style: _estiloLetraColorMedio(context),
                          ),
                          TextSpan(
                            text: "Ingreso directo a una UCI en adultos con\n    hipotensión que requieran vasopresores\n    o insuficiencia respiratoria que requiera\n    ventilación mecánica.\n",
                            style: _estiloLetra1(context),
                          ),
                        ]
                    ),
                  ),
                ),

                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                  ),
                  child:Image.asset('assets/NeumoniaAdquiridaEnComunidad/PSIB.png', ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PSI()),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                  ),
                  child:Image.asset('assets/NeumoniaAdquiridaEnComunidad/CURB65B.png', ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CURB65()),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                  ),
                  child:Image.asset('assets/NeumoniaAdquiridaEnComunidad/CRB65B.png', ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CRB65()),
                    );
                  },
                ),
                //VerImagen("assets/NeumoniaAdquiridaEnComunidad/tinticionDiagnosticoTabla1.png", 1, "full"),

                Container(height: MediaQuery.of(context).size.height*0.05,),
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

  Widget menuDiagnostico(context, String titulo){
    return new Container(
      color: colorMedio,
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
      fontSize: MediaQuery.of(context).size.width * 0.05,
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
  _estiloLetraColorMedio(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorOscuro,
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

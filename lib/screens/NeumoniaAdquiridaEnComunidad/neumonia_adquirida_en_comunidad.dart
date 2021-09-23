import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/antigeno_unitario_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/deteccion_virus_influenza_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/hemocultivo_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/manejo_ambulatorio_hospitalario_NAC_tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_grave_NAC.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/procalcitonina_NAC_Tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/signos_sintomas_NAC.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/tinticion_gram_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/tratamiento_antimicrobiano_NAC_Tratamiento.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
class NeumoniaAdquiridaEnComunidad extends StatefulWidget {
  const NeumoniaAdquiridaEnComunidad({Key key}) : super(key: key);

  @override
  _NeumoniaAdquiridaEnComunidadState createState() => _NeumoniaAdquiridaEnComunidadState();
}

class _NeumoniaAdquiridaEnComunidadState extends State<NeumoniaAdquiridaEnComunidad> {
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      routes: {
        "/MainMenu":(BuildContext context)=>MainMenu(),
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
                Volver(2, "/MainMenu"),
                Container(height: MediaQuery.of(context).size.height*0.015,),
                ImagenEncabezadoSeccion("assets/NeumoniaAdquiridaEnComunidad/diagnostico.png"),
                menuDiagnostico(context),
                Container(height: MediaQuery.of(context).size.height*0.05,),
                ImagenEncabezadoSeccion("assets/NeumoniaAdquiridaEnComunidad/tratamiento.png"),
                menuTratamiento(context),
                Container(height: MediaQuery.of(context).size.height*0.05,),
                Volver(2, "/MainMenu"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),
          //LogoFooter(2, colorMedio),
        ],
      ),
    );
  }

  Widget menuDiagnostico(context){
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
            child: InkWell(
              child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Signos / Síntomas",
                    style: _estiloLetra1(context)
                  ),
                  ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignosSintomasNAC()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "NAC Grave",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NACGrave()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Tinción de Gram y cultivo de esputo",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TinticionGramNACDiagnostico()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Hemocultivos",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HemocultivoNACDiagnostico()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Antígeno urinario",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AntigenoUnitarioNACDiagnostico()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Detección del virus de la influenza",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeteccionVirusInfluenzaNACDiagnostico()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget menuTratamiento(context){
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
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Manejo ambulatorio u hospitalario",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManejoAmbulatorioUHospitalarioNACTratamiento()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Procalcitonina",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProcalcitoninaNACTratamiento()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:1))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: " Tratamiento antimicrobiano",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TratamientoAntimicrobianoNACTratamiento()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }



  _estiloLetra1(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
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

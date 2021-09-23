import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionTractoUrinario/tracto_urinario_diagnostico.dart';
import 'package:acin/screens/InfeccionTractoUrinario/tracto_urinario_tratamiento_cistitis.dart';
import 'package:acin/screens/InfeccionTractoUrinario/tracto_urinario_tratamiento_pielonefritis.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
class InfeccionTractoUrinarioMenu extends StatefulWidget {
  const InfeccionTractoUrinarioMenu({Key key}) : super(key: key);

  @override
  _InfeccionTractoUrinarioMenuState createState() => _InfeccionTractoUrinarioMenuState();
}

class _InfeccionTractoUrinarioMenuState extends State<InfeccionTractoUrinarioMenu> {
  Color colorClaro = new Color(0xffE2F4FD);
  Color colorMedio = new Color(0xff55BDEC);
  Color colorOscuro = new Color(0xff55BDEC);
  Color colorMuyOscuro = new Color(0xffF0737B);
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
        shrinkWrap: true,
        children: [
          Headers(colorMedio, "Infección del tracto urinario", "assets/InfeccionTractoUrinario/tractoUrinatioTitulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                Volver(2, "/MainMenu"),
                Container(height: MediaQuery.of(context).size.height*0.025,),

                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/tractoUrinario_b1.png"),
                menuDiagnostico(context),
                Container(height: MediaQuery.of(context).size.height*0.05,),

                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/tractoUrinario_b2.png"),
                menuTratamiento(context),
                Container(height: MediaQuery.of(context).size.height*0.015,),

                Container(height: MediaQuery.of(context).size.height*0.025,),
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
      color: colorMedio,
      child: Column(
        children: [
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:2))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Diagnóstico cistitis / pielonefritis no complicada",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TractoUrinarioDiagnosticoCistitis()),
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
      color: colorMedio,
      child: Column(
        children: [
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:2))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Tratamiento antimicrobiano cistitis no complicada",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TractoUrinarioTratamientoCistitis()),
                );
              },
            ),
          ),
          Container(
            padding: paddingNormal(),
            width: double.infinity,
            decoration:BoxDecoration(
                border:Border(bottom:BorderSide(color:Colors.white,width:2))
            ),
            child: InkWell(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Tratamiento antimicrobiano pielonefritis no complicada",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TractoUrinarioTratamientoPielonefritis()),
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
        color: Colors.white
    );
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

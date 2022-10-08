import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/MenejoDolorPosoperatorio.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DolorModerado extends StatefulWidget {
  const DolorModerado({Key key}) : super(key: key);

  @override
  State<DolorModerado> createState() => _DolorModeradoState();
}

class _DolorModeradoState extends State<DolorModerado> {
  ColorPalette c = ColorPalette();
  GeneralSettings s = new GeneralSettings();
  Color colorClaro;
  Color colorMedio;

  @override
  Widget build(BuildContext context) {
    colorClaro = c.dolorPosoperatorioBackground;
    colorMedio = c.dolorPosoperatorioRojoCabecera;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          "/ManejoDolorPosOperatorio":(BuildContext context)=>ManejoDolorPosoperatorio(),
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

          Headers(colorMedio, "Majeno del dolor Posoperatorio", "assets/MenejoDolorPosoperatorio/ManejoPosoperatorioTitulo.png"),

          Container(
            child: Column(
              children: [
                Container(
                  margin: s.margenNormal(context),
                  child: Volver(1, "/ManejoDolorPosOperatorio"),
                ),
                Container(
                  margin: s.margenNormal(context),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        child: Column(
                          children: [
                            Image.asset("assets/MenejoDolorPosoperatorio/dModerado1.png"),
                            Image.asset("assets/MenejoDolorPosoperatorio/dModerado2.png"),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Column(
                          children: [
                            Image.asset("assets/MenejoDolorPosoperatorio/4.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/5.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/6.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/7.png", height: 40),
                          ],
                        ),
                      ),
                      Expanded(child:
                      InkWell(
                        child: Image.asset("assets/ReferenciasBoton.png",height: 40),
                        onTap: ()=>_goToURL("https://drive.google.com/drive/folders/1Yp-GJekvre3fCN4Mf_Z0Fmnvix945mVd?usp=sharing"),
                      ),
                      ),
                    ],
                  ),
                ),
                s.espacio(),
                Container(
                  margin: s.margenNormal(context),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "DOLOR MODERADO: 4 - 7",
                    textAlign: TextAlign.left,
                    style: s.h1Bold(context, c.dolorPosoperatorioOrange),
                  ),
                ),
                Container(
                  margin: s.margenNormal(context),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Paso 1 y 2",
                    textAlign: TextAlign.left,
                    style: s.h1Regular(context, c.black),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.08,),
                  child: Image.asset("assets/MenejoDolorPosoperatorio/DolorModerado/Paso1.png"),
                ),
                s.espacio(),
                s.espacio(),
                Container(
                    margin: s.margenNormal(context),
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Evite el uso de ",
                                style: s.regular(context, c.black),
                              ),
                              TextSpan(
                                text: "Tramadol IV ",
                                style: s.regular(context, c.dolorPosoperatorioAzulClaro),
                              ),
                              TextSpan(
                                text: "en pacientes con TFG menor a 50 ml/min y en trastornos convulsivos no controlados.",
                                style: s.regular(context, c.black),
                              ),
                            ]
                        )
                    )
                ),
                Container(
                  margin: s.margenNormal(context),
                  child: Volver(1, "/ManejoDolorPosOperatorio"),
                ),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),

        ],
      ),
    );
  }
  void _moveToPage(context, String target){
    Navigator.pushNamed(context, target);
  }
  _goToURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

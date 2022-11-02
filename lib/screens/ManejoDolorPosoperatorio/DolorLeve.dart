import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_menu.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_menu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/infeccion_tractu_urinario_menu.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/MenejoDolorPosoperatorio.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/neumonia_adquirida_en_comunidad.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/profilaxis_quirurgica_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';
class DolorLeve extends StatefulWidget {
  const DolorLeve({Key key}) : super(key: key);

  @override
  State<DolorLeve> createState() => _DolorLeveState();
}

class _DolorLeveState extends State<DolorLeve> {
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
                            Image.asset("assets/MenejoDolorPosoperatorio/dLeve2.png"),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Column(
                          children: [
                            Image.asset("assets/MenejoDolorPosoperatorio/1.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/2.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/3.png", height: 40),
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
                    "DOLOR LEVE: 1 - 3",
                    textAlign: TextAlign.left,
                    style: s.h1Bold(context, c.dolorPosoperatorioGreen),
                  ),
                ),
                Container(
                  margin: s.margenNormal(context),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Paso 1",
                    textAlign: TextAlign.left,
                    style: s.h1Regular(context, c.black),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.08,),
                  child: Image.asset("assets/MenejoDolorPosoperatorio/DolorLeve/Paso1.png"),
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
                                text: "Ajuste la dosis según peso y edad.\nEvite el uso de ",
                                style: s.regular(context, c.black),
                              ),
                              TextSpan(
                                text: "Diclofenaco IV ",
                                style: s.regular(context, c.dolorPosoperatorioRojoCabecera),
                              ),
                              TextSpan(
                                text: "en pacientes mayores de 65 años, deshidratados, post-operatorios de anastomosis intestinal, con enfermedad coronaria y/o enfermedad renal.",
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

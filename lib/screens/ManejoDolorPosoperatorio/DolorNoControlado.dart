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

class DolorNoControlado extends StatefulWidget {
  const DolorNoControlado({Key key}) : super(key: key);

  @override
  State<DolorNoControlado> createState() => _DolorNoControladoState();
}

class _DolorNoControladoState extends State<DolorNoControlado> {
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
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Container(
                        child: InkWell(
                          child: Image.asset("assets/ReferenciasBoton.png",height: 40),
                          onTap: ()=>_goToURL("https://drive.google.com/drive/folders/1Yp-GJekvre3fCN4Mf_Z0Fmnvix945mVd?usp=sharing"),
                        ),
                      )
                    ],
                  ),
                ),
                s.espacio(),
                Container(
                  margin: s.margenDerecho(context),
                  child: Image.asset("assets/MenejoDolorPosoperatorio/dolorNoControlado.png"),
                ),
                s.espacio(),
                s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: s.margenNormal(context),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("1. ", style: s.regularBold(context, c.dolorPosoperatorioRojoSevero),),
                          ),
                          Expanded(
                            child: Text("Analgesia controlada por el paciente (ACP), y /o", style: s.regular(context, c.black),textAlign: TextAlign.justify,),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("2. ", style: s.regularBold(context, c.dolorPosoperatorioRojoSevero),),
                          ),
                          Expanded(
                            child: Text("Bloqueo nervioso, y/o", style: s.regular(context, c.black),textAlign: TextAlign.justify,),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("3. ", style: s.regularBold(context, c.dolorPosoperatorioRojoSevero),),
                          ),
                          Expanded(
                            child: Text("Neuromoduladores: ketamina, gabapentin, pregabalina, etc", style: s.regular(context, c.black),textAlign: TextAlign.justify,),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("4. ", style: s.regularBold(context, c.dolorPosoperatorioRojoSevero),),
                          ),
                          Expanded(
                            child: Text("Apoyo psicológico o psiquiátrico", style: s.regular(context, c.black),textAlign: TextAlign.justify,),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("5. ", style: s.regularBold(context, c.dolorPosoperatorioRojoSevero),),
                          ),
                          Expanded(
                            child: Text("Terapia física y/o ocupacional", style: s.regular(context, c.black),textAlign: TextAlign.justify,),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                s.espacio(),
                s.espacio(),
                s.espacio(),
                Container(
                  margin: s.margenIzquierdo(context),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Image.asset("assets/MenejoDolorPosoperatorio/DolorNoControlado/PacienteDolor.png"),
                      ),
                    ],
                  ),
                ),

                s.espacio(),
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

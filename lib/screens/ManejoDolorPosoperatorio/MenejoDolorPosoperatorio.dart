import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorLeve.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorModerado.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorNoControlado.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorSevero.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/EnfoqueSistematico.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class ManejoDolorPosoperatorio extends StatefulWidget {
  ManejoDolorPosoperatorio({Key key}) : super(key: key);

  @override
  State<ManejoDolorPosoperatorio> createState() => _ManejoDolorPosoperatorioState();
}

class _ManejoDolorPosoperatorioState extends State<ManejoDolorPosoperatorio> {
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
          "/DolorLeve":(BuildContext context)=>DolorLeve(),
          "/DolorModerado":(BuildContext context)=>DolorModerado(),
          "/DolorSevero":(BuildContext context)=>DolorSevero(),
          "/EnfoqueSistematico":(BuildContext context)=>EnfoqueSistematico(),
          "/DolorNoControlado":(BuildContext context)=>DolorNoControlado(),
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
            margin: s.margenNormal(context),
            child: Column(
              children: [
                Volver(2, "/MainMenu"),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                      "Escala numérica\nIntensidad del dolor",
                    textAlign: TextAlign.center,
                    style: s.h1Bold(context, c.dolorPosoperatorioAzul),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Indique el número o el recuadro que mejor describe la ",
                          style: s.regular(context, c.black),
                        ),
                        TextSpan(
                          text: "intensidad ",
                          style: s.regularBold(context, c.black),
                        ),
                        TextSpan(
                          text: "de su ",
                          style: s.regular(context, c.black),
                        ),
                        TextSpan(
                          text: "dolor en este momento.",
                          style: s.regularBold(context, c.black),
                        ),
                      ]
                    )
                  )
                ),
                s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            child: Column(
                              children: [
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/dLeve1.png"),
                                  onTap: ()=>_moveToPage(context, "/DolorLeve"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/dLeve2.png"),
                                  onTap: ()=>_moveToPage(context, "/DolorLeve"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.17,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/0.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorLeve"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/1.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorLeve"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/2.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorLeve"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/3.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorLeve"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            child: Column(
                              children: [
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/dModerado1.png"),
                                  onTap: ()=>_moveToPage(context, "/DolorModerado"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/dModerado2.png"),
                                  onTap: ()=>_moveToPage(context, "/DolorModerado"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.17,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/4.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorModerado"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/5.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorModerado"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/6.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorModerado"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/7.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorModerado"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            child: Column(
                              children: [
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/dSevero1.png"),
                                  onTap: ()=>_moveToPage(context, "/DolorSevero"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/dSevero2.png"),
                                  onTap: ()=>_moveToPage(context, "/DolorSevero"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.17,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/8.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorSevero"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/9.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorSevero"),
                                ),
                                InkWell(
                                  child: Image.asset("assets/MenejoDolorPosoperatorio/10.png",height: 35),
                                  onTap: ()=>_moveToPage(context, "/DolorSevero"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: InkWell(
                          child: Image.asset("assets/MenejoDolorPosoperatorio/enfoqueSistematico.png"),
                          onTap: ()=>_moveToPage(context, "/EnfoqueSistematico"),
                        ),
                      ),
                      Container()
                    ],
                  ),
                ),
                s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: InkWell(
                          child: Image.asset("assets/MenejoDolorPosoperatorio/dolorNoControlado.png"),
                          onTap: ()=>_moveToPage(context, "/DolorNoControlado"),
                        ),
                      ),
                      Container()
                    ],
                  ),
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
  void _moveToPage(context, String target){
    Navigator.pushNamed(context, target);
  }
}

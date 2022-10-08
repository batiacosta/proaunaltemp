import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/MenejoDolorPosoperatorio.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DolorSevero extends StatefulWidget {
  const DolorSevero({Key key}) : super(key: key);

  @override
  State<DolorSevero> createState() => _DolorSeveroState();
}

class _DolorSeveroState extends State<DolorSevero> {
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
                            Image.asset("assets/MenejoDolorPosoperatorio/dSevero1.png"),
                            Image.asset("assets/MenejoDolorPosoperatorio/dSevero2.png"),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.2,
                        child: Column(
                          children: [
                            Image.asset("assets/MenejoDolorPosoperatorio/8.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/9.png", height: 40),
                            Image.asset("assets/MenejoDolorPosoperatorio/10.png", height: 40),
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
                    "DOLOR SEVERO: 8 - 10",
                    textAlign: TextAlign.left,
                    style: s.h1Bold(context, c.dolorPosoperatorioRojoSevero),
                  ),
                ),
                Container(
                  margin: s.margenNormal(context),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Paso 1, 2 y 3",
                    textAlign: TextAlign.left,
                    style: s.h1Regular(context, c.black),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.08,),
                  child: Image.asset("assets/MenejoDolorPosoperatorio/DolorSevero/Paso1.png"),
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
                                text: "Importante  el uso de ",
                                style: s.regular(context, c.black),
                              ),
                              TextSpan(
                                text: "Tramadol IV ",
                                style: s.regular(context, c.dolorPosoperatorioAzulClaro),
                              ),
                              TextSpan(
                                text: "en pacientes con dolor de características neuropáticas.",
                                style: s.regular(context, c.black),
                              ),
                            ]
                        )
                    )
                ),
                s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Opioides potentes IV:",
                    textAlign: TextAlign.center,
                    style: s.h1Bold(context, c.dolorPosoperatorioAzulRey),
                  ),
                ),
                s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: s.margenNormal(context),
                  child: Image.asset("assets/MenejoDolorPosoperatorio/DolorSevero/OpioidesPotentes.png"),
                ),
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
                            child: Text("• ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Inicie con morfina o hidromorfona (en pacientes con IRA o IRC)", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("• ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Oxicodona en insuficiencia hepática", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("• ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Dosis y frecuencia  según peso y edad", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("• ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("En mayores de 70 años usar el 75% de la dosis", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("• ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Utilice laxantes idealmente de tipo osmótico: PEG, lactulosa", style: s.regular(context, c.black),),
                          )
                        ],
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

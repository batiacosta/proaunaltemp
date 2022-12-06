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

class EnfoqueSistematico extends StatefulWidget {
  const EnfoqueSistematico({Key key}) : super(key: key);

  @override
  State<EnfoqueSistematico> createState() => _EnfoqueSistematicoState();
}

class _EnfoqueSistematicoState extends State<EnfoqueSistematico> {
  ColorPalette c = ColorPalette();
  GeneralSettings s = new GeneralSettings();
  Color colorClaro;
  Color colorMedio;

  /*
  analgesia multimodal
   */

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

          Headers(colorMedio, "Manejo del dolor Posoperatorio", "assets/MenejoDolorPosoperatorio/ManejoPosoperatorioTitulo.png"),

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
                          onTap: ()=>_goToURL("https://drive.google.com/file/d/1Fgpp4pbmIvBDrauQy8xmuBf7TfHhndaQ/view?usp=share_link"),
                        ),
                      )
                    ],
                  ),
                ),
                s.espacio(),
                //Cambiar título por analgesia multimodal
                Container(
                  child: Image.asset("assets/MenejoDolorPosoperatorio/enfoqueSistematico.png"),
                ),
                s.espacio(),s.espacio(),s.espacio(),
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
                            child: Text("Registrar en HOSVITAL y en las notas "
                                "de evolución clínica la escala numérica de "
                                "intensidad del dolor (ej: 5/10).",
                              style: s.regular(context, c.black),textAlign: TextAlign.justify,),
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
                            child: Text("Cuando utilice Diclofenaco IV mantenga "
                                "un adecuado estado de hidratación.", style: s.regular(context, c.black),textAlign: TextAlign.justify,),
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
                            child: Text("Utilice acetaminofén oral si tolera la vía oral. "
                              , style: s.regular(context, c.black), textAlign: TextAlign.justify,),
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
                            child: Text(
                                "El Acetaminofén IV sólo esta indicado cuando "
                                "no hay tolerancia a la vía oral.", style: s.regular(context, c.black), textAlign: TextAlign.justify,),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                s.espacio(),s.espacio(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: s.margenNormal(context),
                  child: Image.asset("assets/MenejoDolorPosoperatorio/EnfoqueSistematico/AnalgesiaMultimodal.png"),
                ),
                s.espacio(),
                s.espacio(),

                //Poner en botón
                Container(
                    margin: s.margenNormal(context),
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Cuando utilice ",
                                style: s.regular(context, c.black),
                              ),
                              TextSpan(
                                text: "Opioides Potentes, ",
                                style: s.regularBold(context, c.dolorPosoperatorioAzulRey),
                              ),
                              TextSpan(
                                text: "use siempre analgesia multimodal y esté atento a efectos eventos adversos:",
                                style: s.regular(context, c.black),
                              ),
                            ]
                        )
                    )
                ),
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
                            child: Text("- ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Hipotensión / Bradicardia", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("- ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Depresión respiratoria", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("- ", style: s.regular(context, c.black),),
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
                            child: Text("- ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Constipación", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("- ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Náuseas / Vómito", style: s.regular(context, c.black),),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            child: Text("- ", style: s.regular(context, c.black),),
                          ),
                          Expanded(
                            child: Text("Prurito", style: s.regular(context, c.black),),
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

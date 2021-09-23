import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/clasificacion_isq.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/descolonizacion_profilaxis_quirurgica.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/factores_riesgo_isq.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/intraoperatoria_profilaxis.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/posoperatoria_profilaxis.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/preoperatorio_profilaxis.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
class ProfilaxisQuirurgicaMenu extends StatefulWidget {
  const ProfilaxisQuirurgicaMenu({Key key}) : super(key: key);

  @override
  _ProfilaxisQuirurgicaMenuState createState() => _ProfilaxisQuirurgicaMenuState();
}

class _ProfilaxisQuirurgicaMenuState extends State<ProfilaxisQuirurgicaMenu> {
  Color colorClaro = new Color(0xffFDE9E6);
  Color colorMedio = new Color(0xffEE3338);
  Color colorOscuro = new Color(0xffEE3338);
  Color colorMuyOscuro = new Color(0xffF0737B);
  Widget build(BuildContext context) {
    return MaterialApp(
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
          Headers(colorMedio, "Profilaxis quirúrgica", "assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_titulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                Volver(2, "/MainMenu"),
                Container(height: MediaQuery.of(context).size.height*0.015,),

                InkWell(
                  child: Image.asset('assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b1.png'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClasificacionISQProfilaxisQuirurgica()),
                    );
                  },
                ),
                Container(height: MediaQuery.of(context).size.height*0.05,),
                InkWell(
                  child: Image.asset('assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b2.png'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FactoresRiesgoISQProfilaxisQuirurgica()),
                    );
                  },
                ),
                Container(height: MediaQuery.of(context).size.height*0.05,),

                ImagenEncabezadoSeccion("assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b3.png"),
                menuDiagnostico(context),
                Container(height: MediaQuery.of(context).size.height*0.05,),
                InkWell(
                  child: Image.asset('assets/ProfilaxisQuirurgica/ProfilaxisQuirurgica_b4.png'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DescolonizacionSAureusProfilaxisQuirurgica()),
                    );
                  },
                ),

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
      color: colorMuyOscuro,
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
                          text: "Preoperatoria",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreoperatoriaProfilaxisQuirurgica()),
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
                          text: "Intraoperatoria",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntraoperatoriaProfilaxisQuirurgica()),
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
                          text: "Posoperatoria",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PosoperatoriaProfilaxisQuirurgica()),
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

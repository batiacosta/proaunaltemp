import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/absceso_purulento.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/erisipela.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/fascitis.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/impetigo.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/piomiositis.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_blandos_manejo_ambulatorio.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_blandos_manejo_hospitalario.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class TejidosMenu extends StatefulWidget {
  const TejidosMenu({Key key}) : super(key: key);

  @override
  _TejidosMenuState createState() => _TejidosMenuState();
}

class _TejidosMenuState extends State<TejidosMenu> {
  Color colorClaro = new Color(0xffFFEDE0);
  Color colorMedio = new Color(0xffF37036);
  Color colorOscuro = new Color(0xffF37036);
  Color colorMuyOscuro = new Color(0xffF0737B);
  Color colorDark = new Color(0xff5E5E5E);
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
          Headers(colorMedio, "Infección de piel y tejidos blandos", "assets/InfeccionPielTejidosBlandos/tejidosTitulo.png"),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                Volver(2, "/MainMenu"),
                Container(height: MediaQuery.of(context).size.height*0.015,),

                ImagenEncabezadoSeccion("assets/InfeccionPielTejidosBlandos/tejidos_b1.png"),
                menuDiagnostico(context),
                Container(height: MediaQuery.of(context).size.height*0.05,),

                ImagenEncabezadoSeccion("assets/InfeccionPielTejidosBlandos/tejidos_b2.png"),
                menuTratamiento(context),
                Container(height: MediaQuery.of(context).size.height*0.05,),

                InkWell(
                  child: Image.asset('assets/InfeccionPielTejidosBlandos/tejidos_b3.png'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TejidosBlandosManejoHospitalario()),
                    );
                  },
                ),

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
                          text: "Impétigo / Ectima",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Impetigo()),
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
                          text: "Erisipela / Celulitis",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Erisipela()),
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
                          text: "Fascitis necrosante",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fascitis()),
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
                          text: "Absceso, Carbúnculo, Forúnculo",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AbscesoPurulento()),
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
                          text: "Piomiositis",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Piomiositis()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget menuHospitalario(context){
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
                          text: "Manejo hospitalario",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TejidosBlandosManejoHospitalario()),
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
                          text: "Manejo ambulatorio",
                          style: _estiloLetra1(context)
                      ),
                    ]
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TejidosBlandosManejoAmbulatorio()),
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

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/EnfermedadTromboembolicaVenosa.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_menu.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_menu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioMenu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/infeccion_tractu_urinario_menu.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/MenejoDolorPosoperatorio.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/neumonia_adquirida_en_comunidad.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/profilaxis_quirurgica_menu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
class MainMenu extends StatefulWidget {
  const MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  Color colorClaro = new Color(0xffCBD49D);
  Color colorMedio = new Color(0xff9BB350);
  Color colorOscuro = new Color(0xff87A44D);
  @override
  void initState() {
    // TODO: implement initState
    Firebase.initializeApp();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
              return new Scaffold(
                drawer: MenuDesplegado(),
                appBar: BarraSuperior().Barra(context, false),
                bottomNavigationBar: BarraInferior(),
                  resizeToAvoidBottomInset: false,
                  body: SafeArea(
                    child: cuerpo(context),
                  ),
              );
            }
        )
    );
  }

  Widget cuerpo(context){
    return new ListView(
      children: [
        Container(height: MediaQuery.of(context).size.height*0.05,),

        Container(
          margin: margenNormal(context),
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b1.png', ),
                onPressed: (){setState(() {
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NeumoniaAdquiridaEnComunidad()),
                );
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b2.png', ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfeccionTractoUrinario()),
                  );
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b3.png', ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfeccionIntraAbdominalMenu()),
                  );
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b4.png', ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TejidosMenu()),
                  );
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b5.png', ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilaxisQuirurgicaMenu()),
                  );
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b6.png', ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManejoDolorPosoperatorio()),
                  );
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
                ),
                child:Image.asset('assets/b7.png', ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EnfermedadTromboembolicaVenosa()),
                  );
                },
              ),
            ],
          ),
        ),
        Container(height:MediaQuery.of(context).size.height*0.005,),
      ],
    );
  }

  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.05,
        left: MediaQuery.of(context).size.width*0.05
    );
  }

  _estiloLetra1(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.07,
        color: Colors.white);
  }
}

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/logo_portada.dart';
import 'package:acin/screens/login_screen.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';
class RecuperacionContrasenaExitosa extends StatelessWidget {

  Color colorClaro = new Color(0xffCBD49D);
  Color colorMedio = new Color(0xff9BB350);
  Color colorOscuro = new Color(0xff87A44D);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
              return new Scaffold(
                  appBar: BarraSuperior().BarraSola(context, false),
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
    return new ListView(
      children: [

        Container(height:MediaQuery.of(context).size.height*0.25,),
        Container(
          margin: margenNormal(context),
          child: Column(
            children: [
              Text("Revise su email para encontrar el link y asignar su nueva contraseña",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Ancizar',
                  fontSize: MediaQuery.of(context).size.height*0.04,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              Container(height:MediaQuery.of(context).size.height*0.05,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(
                        MediaQuery.of(context).size.width * 0.8
                    ),
                    primary: colorOscuro,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    side: BorderSide(
                      color: colorOscuro,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.025, bottom: MediaQuery.of(context).size.height * 0.025
                    ),
                    child: Text(
                      'Continuar',
                      style: TextStyle(
                          fontFamily: "Ancizar",
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.06),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                          (Route<dynamic> route) => false,);
                    //  Acceder();
                  }
              ),
              Container(height:MediaQuery.of(context).size.height*0.3,),

            ],
          ),
        ),

      ],
    );
  }

  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.1,
        left: MediaQuery.of(context).size.width*0.1
    );
  }
  _estiloLetra1(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: Colors.white);
  }

}

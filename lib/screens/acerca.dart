import 'dart:ui';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:flutter/material.dart';

class AcercaDe extends StatelessWidget {
  AcercaDe({Key key}) : super(key: key);
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
          //"/ProfilaxisQ":(BuildContext context)=>ProfilaxisQuirurgicaMenu(),
        },
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
    return new Container(
      margin: margenNormal(context),
      child: ListView(
        children: [
          Volver(1, "/MainMenu"),
          Container(height: MediaQuery.of(context).size.height * 0.025,),
          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Acerca de\nCopyright © 2021\n\n",
                        style: _estiloLetra1Bold(context)
                    ),
                    TextSpan(
                        text: "La resistencia a los antimicrobianos es actualmente un problema de salud pública a nivel mundial, que se incrementa debido al uso inadecuado de antimicrobianos en diferentes escenarios, uno de estos es durante la atención en salud. Esta aplicación móvil se dirige especialmente al personal del área de la salud que en su práctica diaria pueda estar involucrado en los procesos de prescripción, administración o control de antimicrobianos.\n\n",
                        style: _estiloLetra1(context)
                    ),
                    TextSpan(
                        text: "La aplicación móvil ha sido elaborada por docentes de Infectología del Departamento de Medicina Interna de la Universidad Nacional de Colombia, con base en las Guías de Práctica Clínica (GPC) disponibles a la fecha. Los autores han hecho todo lo posible para proporcionar información precisa y actualizada, sin embargo, no son responsables de errores, omisiones o de cualquier resultado relacionado con el uso de los contenidos de esta aplicación, y no asumen ninguna responsabilidad por el uso de los productos y procedimientos descritos.\n\n",
                        style: _estiloLetra1(context)
                    ),
                    TextSpan(
                        text: "Las recomendaciones descritas en esta aplicación pueden no ser aplicables a todas las personas, por lo que su contenido no remplaza una aproximación clínica racional teniendo en cuenta el contexto y las características individuales de cada paciente. Cuando se considere el uso de cualquier medicamento en un entorno clínico, el proveedor de atención médica o el usuario de la aplicación móvil es responsable de determinar el estado del medicamento por parte de la entidad reguladora (Ej. FDA, INVIMA) y de revisar la información de prescripción para obtener las recomendaciones más actualizadas sobre dosis, precauciones, contraindicaciones e indicaciones, para así determinar el uso más apropiado del producto.\n\n",
                        style: _estiloLetra1(context)
                    ),
                    TextSpan(
                        text: "Expertos temáticos:\n\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Jorge Alberto Cortés Luna\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Médico especialista en Medicina interna e Infectologia MSc - Infectólogo del Hospital Universitario Nacional y Profesor Titular de la Facultad de Medicina, Universidad Nacional de Colombia.\n\n",
                        style: _estiloLetra1(context)
                    ),TextSpan(
                        text: "Carlos Arturo Álvarez Moreno\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Médico Infectólogo MSc PhD FIDSA, Profesor Titular de la Facultad de Medicina, Universidad Nacional de Colombia.\n\n",
                        style: _estiloLetra1(context)
                    ),TextSpan(
                        text: "Martha Carolina Valderrama Rios\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Médico Universidad Militar Nueva Granada, MSc en Epidemiología Clínica Universidad Nacional de Colombia.\n\n",
                        style: _estiloLetra1(context)
                    ),

                    TextSpan(
                        text: "Jairo Alberto Morantes Caballero\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Especialista Medicina Interna Universidad Nacional, Epidemiología- Universidad del Rosario, Director de Clínicas Médicas HUN, Director de Prestación de Servicios hospitalarios y ambulatorios HUN, Docente Medicina Interna Universidad Nacional\n\n",
                        style: _estiloLetra1(context)
                    ),

                    TextSpan(
                        text: "Desarrolladores\n\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "David Leonardo Acosta Laverde\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Ingeniero en Mecatrónica, Universidad Militar Nueva Granada. Software Developer en Graziles.\n\n",
                        style: _estiloLetra1(context)
                    ),TextSpan(
                        text: "Liliana Espinosa Pabón\n",
                        style: _estiloLetra1Bold(context)
                    ),TextSpan(
                        text: "Diseñadora Gráfica, Universidad Jorge Tadeo Lozano. General Manager en Graziles.\n\n",
                        style: _estiloLetra1(context)
                    ),
                  ]
              )
          ),
          Volver(1, "/MainMenu"),
        ],
      ),
    );
  }

  _estiloLetra1(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorDark,
    );
  }
  _estiloLetra1Bold(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorDark,
      fontWeight: FontWeight.bold
    );
  }
  _estiloLetra1Italic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorDark,
        fontStyle: FontStyle.italic
    );
  }
  _estiloLetraChiquita(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.03,
      color: colorDark,
    );
  }
  _estiloLetraWhite(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: Colors.white,
    );
  }
  _estiloLetraColorMedio(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorMedio,
    );
  }
  _estiloLetraColorMedioBold(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorOscuro,
        fontWeight: FontWeight.bold
    );
  }
  _estiloLetraTitulo(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.07,
        color: Colors.white);
  }

  paddingNormal(context){
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

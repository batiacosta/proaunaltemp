import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/SquaredRegular.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/headers.dart';
import 'package:acin/ReusableWidgets/imagenEncabezadoSeccion.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:acin/ReusableWidgets/volver.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/DiagnosticoITUComplicada.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/TratamientoCistitiscomplicada.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/TratamientoPielonefritiscomplicada.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioMenu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_diagnostico.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_cistitis.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_pielonefritis.dart';

import 'package:flutter/material.dart';
class InfeccionTractoUrinarioComplicadaMenu extends StatefulWidget {
  const InfeccionTractoUrinarioComplicadaMenu({Key key}) : super(key: key);

  @override
  _InfeccionTractoUrinarioComplicadaMenuState createState() => _InfeccionTractoUrinarioComplicadaMenuState();
}

class _InfeccionTractoUrinarioComplicadaMenuState extends State<InfeccionTractoUrinarioComplicadaMenu> {
  Color colorClaro = new Color(0xffE2F4FD);
  Color colorMedio = new Color(0xff55BDEC);

  GeneralSettings s = new GeneralSettings();
  ColorPalette c = new ColorPalette();

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/InfeccionTractoUrinario":(BuildContext context)=>InfeccionTractoUrinario(),
          "/ITUComplicada":(BuildContext context)=>InfeccionTractoUrinarioComplicadaMenu(),
          "/DiagnosticoITUComplicada":(BuildContext context)=>DiagnosticoITUComplicada(),
          "/TratamientoCistitisComplicada":(BuildContext context)=>TratamientoCistitisComplicada(),
          "/TratamientoPielonefritiscomplicada":(BuildContext context)=>TratamientoPielonefritiscomplicada(),
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

      child: ListView(
        shrinkWrap: true,
        children: [
          Headers(colorMedio, "Infección del tracto urinario", "assets/InfeccionTractoUrinario/tractoUrinatioTitulo.png"),
          Container(
            margin: s.margenNormal(context),
            child: Column(
              children: [
                Volver(1, "/InfeccionTractoUrinario"),
                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/InfeccionComplicada.png"),
                s.espacio(),
                s.espacio(),

                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/tractoUrinario_b1.png"),
                InkWell(
                  child: SquaredRegular(
                    color: c.infeccionTractoUrinarioVerde,
                    text: 'Diagnóstico ITU complicada',
                    textColor: c.white,
                  ),
                  onTap: () => Navigator.pushNamed(context, '/DiagnosticoITUComplicada'),
                ),

                s.espacio(),

                ImagenEncabezadoSeccion("assets/InfeccionTractoUrinario/tractoUrinario_b2.png"),
                InkWell(
                  child: SquaredRegular(
                    color: c.infeccionTractoUrinarioVerde,
                    text: 'Tratamiento antimicrobiano cistitis complicada',
                    textColor: c.white,
                  ),
                  onTap: () => Navigator.pushNamed(context, '/TratamientoCistitisComplicada'),
                ),
                InkWell(
                  child: SquaredRegular(
                    color: c.infeccionTractoUrinarioVerde,
                    text: 'Tratamiento antimicrobiano pielonefritis complicada',
                    textColor: c.white,
                  ),
                  onTap: () => Navigator.pushNamed(context, '/TratamientoPielonefritiscomplicada'),
                ),

                s.espacio(),
                s.espacio(),

                Volver(1, "/InfeccionTractoUrinario"),
                Container(height: MediaQuery.of(context).size.height*0.05,),
              ],
            ),
          ),
          //LogoFooter(2, colorMedio),
        ],
      ),
    );
  }
}

import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/CalculadoraCaprini.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Caprini extends StatefulWidget {
  String atrasRoute;
  Caprini({Key key, this.atrasRoute}) : super(key: key);

  @override
  State<Caprini> createState() => _CapriniState();

}

class _CapriniState extends State<Caprini> {
  ColorPalette c = ColorPalette();
  GeneralSettings s = GeneralSettings();
  bool _state = false;

  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: c.white,
        borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
      ),
        child: Column(
          children: [
            InkWell(
                child: Container(
                  padding: s.margenNormalEspaciadd(context),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: c.tromboprofilaxisAzulClaroIntenso,
                    borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: s.margenDelgado(context),
                        child: Image.asset('assets/EnfermedadTromboembolicaVenosa/calculadora.png', height: 40,),
                      ),
                      Expanded(
                        child: Text(
                            'CALCULADORA CAPRINI',
                          style: s.regularBold(context, c.white),
                        ),
                      )
                    ],
                  ),
                ),
              onTap: () => Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new CalculadoraCaprini(atrasRoute: widget.atrasRoute,))),
            ),
          ],
        )
    );
  }



}

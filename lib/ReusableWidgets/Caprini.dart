import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Caprini extends StatefulWidget {
  Caprini({Key key}) : super(key: key);

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
    _setResult();
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
              onTap: () => setState(() => _state = !_state),
            ),
            _calculadora(),
          ],
        )
    );
  }

  Widget _calculadora(){
    if(_state){
      return Form(
          child: Column(
            children: [
              Text("La calculadorooora")
            ],
          )
      );
    }else{
      return Container();
    }
  }

  _setResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('Caprini', result.toInt());
  }

}

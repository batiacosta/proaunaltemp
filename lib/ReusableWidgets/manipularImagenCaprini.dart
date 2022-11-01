import 'package:acin/ReusableWidgets/ColorPalette.dart';
import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:acin/ReusableWidgets/RoundedContainerRegularBold.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ManipularImagenCaprini extends StatefulWidget {
  String imageName;
  ManipularImagenCaprini(this.imageName);
  _ManipularImagen createState() => _ManipularImagen();
}
class _ManipularImagen extends State<ManipularImagenCaprini>{
  GeneralSettings s = GeneralSettings();
  ColorPalette c = ColorPalette();

  Widget _caprini = Container();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Matrix4> notifier = ValueNotifier(Matrix4.identity());
    _getResult();
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: BarraSuperior().Barra(context, false),
      bottomNavigationBar: BarraInferior(),
      body: MatrixGestureDetector(
        onMatrixUpdate: (m, tm, sm, rm) {
          notifier.value = m;
        },
        child: AnimatedBuilder(
          animation: notifier,
          builder: (ctx, child) {
            return Transform(
              transform: notifier.value,
              child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(32),
                  alignment: Alignment(0, 0),
                  child: Column(
                    children: [
                      _caprini,
                      s.espacio(),
                      Image.asset(widget.imageName, height: 500,),
                    ],
                  )
              ),
            );
          },
        ),
      ),
    );
  }
  _getResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var capriniValue = prefs.getInt('Caprini') ?? 0;
    _caprini = Container(
      child: RoundedContainerRegularBold(
        color: c.tromboprofilaxisAzulClaroIntenso,
        colorText: c.white,
        text: 'Caprini: $capriniValue',
      ),
    );
  }
}
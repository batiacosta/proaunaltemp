import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';

class ManipularImagen extends StatefulWidget {
  String imageName;
  ManipularImagen(this.imageName);
  _ManipularImagen createState() => _ManipularImagen();
}
class _ManipularImagen extends State<ManipularImagen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Matrix4> notifier = ValueNotifier(Matrix4.identity());
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
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                  ),

                  Container(

                      padding: EdgeInsets.all(32),
                      alignment: Alignment(0, 0),
                      child: Image.asset(widget.imageName)
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
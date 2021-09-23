import 'package:flutter/material.dart';
class BarraInferior extends StatelessWidget {
  const BarraInferior({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
        child: Text(
          "Universidad Nacional de Colombia",
          textAlign: TextAlign.center,
          style: _estiloLetraWhite(context),
        ),
      )
    );
  }
  _estiloLetraWhite(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: Colors.black,
      fontStyle: FontStyle.italic
    );
  }
}

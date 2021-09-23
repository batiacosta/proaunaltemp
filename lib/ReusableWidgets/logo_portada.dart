import 'package:flutter/material.dart';

class LogoPortada extends StatelessWidget {
  String ruta;
  LogoPortada(this.ruta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width*0.2,
      height: MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ruta),
        ),
      ),
    );
  }
}

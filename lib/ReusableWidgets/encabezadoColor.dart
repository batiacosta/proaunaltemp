import 'package:flutter/material.dart';
class EncabezadoConColor extends StatelessWidget {
  Color fondo;
  Color colorTexto;
  String texto;
  EncabezadoConColor(this.fondo, this.texto, this.colorTexto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: fondo,
      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width * 0.025, right:MediaQuery.of(context).size.width * 0.025,),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            children: [
              TextSpan(
                text: texto,
                style: _estiloLetra1(context),
              ),
            ]
        ),
      ),
    );
  }
  _estiloLetra1(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorTexto,
    );
  }
}

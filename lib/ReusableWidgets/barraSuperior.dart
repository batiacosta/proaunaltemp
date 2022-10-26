import 'dart:ui';
import 'package:acin/ReusableWidgets/busqueda.dart';
import 'package:flutter/material.dart';
class BarraSuperior{

   Color colorFuente;
  PreferredSizeWidget Barra(BuildContext context, bool isWhite) {
    Color colorcito;
    String logoRuta;
    if(isWhite){
      colorcito = new Color(0xff9BB350);
      colorFuente = new Color(0xffFFFFFF);
      logoRuta = "assets/unalLogoWhiteGreen.png";
    }
    else{
      colorcito = new Color(0xffFFFFFF);
      colorFuente = new Color(0xff5E5E5E);
      logoRuta = "assets/unalLogoBlack.png";
    }
    return AppBar(
      elevation: 0,
      backgroundColor: colorcito,
      centerTitle: true,
      iconTheme: IconThemeData(
        size: MediaQuery.of(context).size.height * 0.05,
        color: Colors.black,
      ),

      actions: [
        Container(
          //width: MediaQuery.of(context).size.width * 0.18,
          child: IconButton(
            //iconSize: MediaQuery.of(context).size.height * 0.03,
            icon: const Icon(Icons.search_sharp),
            iconSize: MediaQuery.of(context).size.height * 0.05,
            tooltip: 'Show Snackbar',
            onPressed: () {
              showSearch(context: context, delegate: Busqueda());
            },
          ),
        ),
      ],
      title:  Container(
        width: MediaQuery.of(context).size.width * 0.5,
          child: Center(
            child: Image(
                image: AssetImage("assets/EncabezadoMenu.png"),
              height: MediaQuery.of(context).size.height * 0.05,
            )
          ),
        )

    );
  }

  PreferredSizeWidget BarraSola(BuildContext context, bool isWhite) {
    Color colorcito;
    String logoRuta;
    if(isWhite){
      colorcito = new Color(0xff9BB350);
      colorFuente = new Color(0xffFFFFFF);
      logoRuta = "assets/unalLogoWhiteGreen.png";
    }
    else{
      colorcito = new Color(0xffFFFFFF);
      colorFuente = new Color(0xff5E5E5E);
      logoRuta = "assets/unalLogoBlack.png";
    }
    return AppBar(
        elevation: 0,
        backgroundColor: colorcito,
        centerTitle: true,
        iconTheme: IconThemeData(
          size: MediaQuery.of(context).size.height * 0.05,
          color: Colors.black, //change your color here
        ),

        title:  Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Center(
              child: Image(
                image: AssetImage("assets/EncabezadoMenu.png"),
                height: MediaQuery.of(context).size.height * 0.05,
              )
          ),
        )

    );
  }
  _estiloLetraWhite(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.height * 0.045,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }
}


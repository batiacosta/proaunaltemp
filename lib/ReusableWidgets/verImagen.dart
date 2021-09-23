import 'package:acin/ReusableWidgets/manipularImagen.dart';
import 'package:flutter/material.dart';


class VerImagen extends StatelessWidget {
  String image;
  int n;
  String typeOfMultimedia;

  String texto = '';
  Color fondoBoton = Colors.black87;
  Color textoColor = Colors.white;
  Color fondoContenedor = Colors.black12;

  VerImagen(this.image, this.n, this.typeOfMultimedia);

  @override
  Widget build(BuildContext context) {
    if(typeOfMultimedia=='t'){
      String texto = 'Ver Tabla antimicrobianos';
      Color fondoBoton = Colors.black87;
      Color textoColor = Colors.white;
      Color fondoContenedor = Colors.blue;//Color(0xffD2D3D5);
      return _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor);
    }else if(typeOfMultimedia=='t2'){
      String texto = 'Ver Tabla';
      Color fondoBoton = Colors.black87;
      Color textoColor = Colors.white;
      Color fondoContenedor = Colors.blue;//Color(0xffD2D3D5);
      return _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor);
    }
    else if(typeOfMultimedia=='f'){
      String texto = 'VER FIGURA';
      Color fondoBoton = Colors.white;
      Color textoColor = Color.fromRGBO(51, 51, 51, 1);
      Color fondoContenedor = Color.fromRGBO(51, 51, 51, 1);
      return _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor);
    }else if(typeOfMultimedia=='f2'){
      String texto = 'VER FIGURA ';
      Color fondoBoton = Colors.black87;
      Color textoColor = Colors.white;
      Color fondoContenedor = Colors.black12;
      return _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor);
    }
    else if(typeOfMultimedia=='i'){
      String texto = 'VER IMAGEN';
      Color fondoBoton = Colors.black87;
      Color textoColor = Colors.white;
      Color fondoContenedor = Colors.black12;
      return _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor);
    }
    else if(typeOfMultimedia=='i2'){
      String texto = 'VER IMAGEN';
      Color fondoBoton = Colors.black87;
      Color textoColor = Colors.white;
      Color fondoContenedor = Color.fromRGBO(206, 234, 247, 1);
      return _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor);
    }
    else if(typeOfMultimedia=='full'){
      return _fullImage(context, image);
    }
    else{return Container();}

  }

  Widget _verImagen(context, image, n, typeOfMultimedia, texto, fondoBoton, textoColor, fondoContenedor){

    return new Container(
        color: Colors.transparent,//Color(0xffD2D3D5),
        child: Container(
          //margin:EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: fondoBoton,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => new ManipularImagen(image)));
                    },
                    child: Container(
                      margin:EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                      child: Text('${texto} ', style: TextStyle(fontFamily: "Ancizar",color: textoColor, fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(

                  child: Stack(children:<Widget>[
                    Image.asset(image,width: MediaQuery.of(context).size.width * 1,),
                  ]),
                  onPressed: (){
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new ManipularImagen(image)));
                  },
                ),
              )

            ],
          ),
        )
    );
  }
  Widget _fullImage(context, image){
    return new Container(
      child: Stack(
        children: <Widget>[
          InkWell(
            child: Image.asset(image),
            onTap: (){
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new ManipularImagen(image)));
            },
          ),
          /*
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
            ),
            child:Image.asset(image, ),
            onPressed: (){
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new ManipularImagen(image)));
            },
          ),*/
          Positioned(
            bottom: 0,
            right: 0,
            child: FlatButton(
              child: Stack(children:<Widget>[
                Image.asset('assets/ExpandIcon.png', width: 20, height: 20,),
              ]),
              onPressed: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen(image)));
              },
            ),
          ),
        ],
      ),
    );
  }
}

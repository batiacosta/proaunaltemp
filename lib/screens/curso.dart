import 'dart:ui';
import 'package:acin/screens/mainMenu.dart';
import 'package:connectivity/connectivity.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:flutter/material.dart';
import 'package:acin/ReusableWidgets/volver.dart';

import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
class Curso extends StatefulWidget {
  const Curso({Key key}) : super(key: key);

  @override
  _CursoState createState() => _CursoState();
}

class _CursoState extends State<Curso> {
  void initState() {
    // TODO: implement initState
    Firebase.initializeApp();
    super.initState();
  }
  @override
  Color colorClaro = new Color(0xffD2EEFC);
  Color colorMedio = new Color(0xff0098DB);
  Color colorOscuro = new Color(0xff0098DB);
  Color colorMuyOscuro = new Color(0xff1E609A);
  Color colorDark = new Color(0xff5E5E5E);
  bool estaConectado = false;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    _checkInternetConnection();
    return MaterialApp(
        routes: {
          "/MainMenu":(BuildContext context)=>MainMenu(),
        },
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
              return new Scaffold(
                drawer: MenuDesplegado(),
                appBar: BarraSuperior().Barra(context, false),
                bottomNavigationBar: BarraInferior(),
                resizeToAvoidBottomInset: false,
                body: SafeArea(
                  child: cuerpo(context),
                ),
              );
            }
        )
    );
  }

  Future<void> _checkInternetConnection() async {
    try{
      var result = await Connectivity().checkConnectivity();
      if(result == ConnectivityResult.none){
        setState(() {
          estaConectado = false;
        });
      }else if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){

        setState(() {
          estaConectado = true;
        });
      }
    }on PlatformException catch(e){

    }
  }

  Widget cuerpo(context){
    Widget contenido;
    if(estaConectado == true){

      //  Prepare el cuerpo de la pantalla
      contenido = onlineContenido(context);
    }else{
      //  Muestre el contenido offline
      contenido = offlineContenido(context);
    }
    return new Container(
      margin: margenNormal(context),
      child: ListView(
        children: [
          Volver(1, "/MainMenu"),
          Container(height: MediaQuery.of(context).size.height * 0.025,),
          contenido,
          Volver(1, "/MainMenu"),
        ],
      ),
    );
  }
  Widget offlineContenido(context){
    return Column(
      children: [
        texto(context, 'Uso prudente de antimicrobianos en el entorno hospitalario:'),
        link(context, 'https://coursera.org/learn/antibioticos-uso-prudente'),
        imagen(context),
        texto(context, '\nSi es personal administrativo, docente o estudiante activo y tiene una cuenta de correo @unal realice su inscripción en el link:'),
        link(context, 'https://www.coursera.org/programs/coursera-para-la-universidad-nacional-de-colombia-ji3sj?currentTab=CATALOG'),
        texto(context, 'y posteriormente realice la búsqueda del curso a través de la plataforma del convenio.'),
      ],
    );
  }
  Widget onlineContenido(context){
    CollectionReference contenidos = FirebaseFirestore.instance.collection('Contenidos');
    final documento = contenidos.doc('Curso').snapshots();

    return new StreamBuilder(
        stream: documento,
        builder: (context, snapshot){
          if(!snapshot.hasData) return offlineContenido(context);
            return Column(
              children: new List.generate(snapshot.data['parrafos']?.length, (index) {
                //bibliografiaContent(context, snapshot.data['parrafos'][0])
                if(snapshot.data['parrafos'] != null){
                  return texto(context, snapshot.data['parrafos'][index]['texto']);
                }
                else if(snapshot.data['parrafos'][index]['link'] != null){
                  return link(context, snapshot.data['parrafos'][index]['link']);
                }
                else if(snapshot.data['parrafos'][index]['imagen'] != null){
                  return imagen(context);
                }
                else{
                  return Text("No se encontró nada");
                }
              }
              ),
            );


        }
    );
  }
  Widget texto(context, t){
    return new RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            children: [
              TextSpan(
                  text: t+'\n',
                  style: _estiloLetra1(context)
              ),
            ]
        )
    );
  }
  Widget link(context, String l){
    return InkWell(
      child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
              children: [
                TextSpan(
                    text: l + '\n',
                    style: _estiloLetraColorMedio(context)
                ),

              ]
          )
      ),
      onTap: ()=> _launchURL(l),
    );
  }
  Widget imagen(context){
    return Column(
      children: [
    Image(
    width: MediaQuery.of(context).size.width*0.5,
    height: MediaQuery.of(context).size.width*0.5,
    image: AssetImage(
    "assets/logoApp.png",
    )),
        Container(
          height: MediaQuery.of(context).size.height*0.025,
        )
      ],
    );
  }
  void _launchURL(String urlC) async {
    // ios specification
    String urlMia = urlC;
    if(await canLaunch(urlMia)){
      await launch(urlMia);
    }
  }


  _estiloLetra1(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorDark,
    );
  }
  _estiloLetra1Bold(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorDark,
        fontWeight: FontWeight.bold
    );
  }
  _estiloLetra1Italic(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorDark,
        fontStyle: FontStyle.italic
    );
  }
  _estiloLetraChiquita(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.03,
      color: colorDark,
    );
  }
  _estiloLetraWhite(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: Colors.white,
    );
  }
  _estiloLetraColorMedio(context) {
    return new TextStyle(
      fontFamily: 'Ancizar',
      fontSize: MediaQuery.of(context).size.width * 0.05,
      color: colorMedio,
    );
  }
  _estiloLetraColorMedioBold(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.05,
        color: colorOscuro,
        fontWeight: FontWeight.bold
    );
  }
  _estiloLetraTitulo(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.07,
        color: Colors.white);
  }

  paddingNormal(context){
    return EdgeInsets.only(
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
      top: MediaQuery.of(context).size.width * 0.015,
      bottom: MediaQuery.of(context).size.width * 0.015,
    );
  }
  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08
    );
  }

}

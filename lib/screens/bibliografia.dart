import 'dart:ui';
import 'package:acin/screens/mainMenu.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/menu_hamburguesa.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:acin/ReusableWidgets/volver.dart';

import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Bibliografia extends StatefulWidget {
  const Bibliografia({Key key}) : super(key: key);

  @override
  _BibliografiaState createState() => _BibliografiaState();
}

class _BibliografiaState extends State<Bibliografia> {
  @override
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
          //"/ProfilaxisQ":(BuildContext context)=>ProfilaxisQuirurgicaMenu(),
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
          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Bibliografía\n",
                        style: _estiloLetra1Bold(context)
                    ),
                  ]
              )
          ),
          contenido,
          Volver(1, "/MainMenu"),
        ],
      ),
    );
  }
  Widget offlineContenido(context){
    return new Column(
      children: [
        bibliografiaContent(
            context,
            'Mandell LA, Wunderink RG, Anzueto A, Bartlett JG, Campbell GD, Dean NC, et.al. Infectious Diseases Society of America/American Thoracic Society consensus guidelines on the management of community-acquired pneumonia in adults. Clin Infect Dis. 2007;44 (Suppl 2): S27-S72.\n'
        ),
        bibliografiaContent(
            context,
            'Metlay JP, Waterer GW, Long AC, Anzueto A, Brozek J, Crothers K, et al. Diagnosis and Treatment of Adults with Community-acquired Pneumonia. An Official Clinical Practice Guideline of the American Thoracic Society and Infectious Diseases Society of America. Am J Respir Crit Care Med. 2019;200(7):e45-e67.\n'
        ),
        bibliografiaContent(
            context,
            'National institute for Health and Care Excellence. Pneumonia (community- acquired): antimicrobial prescribing ng138. Available: https://www.nice.org.uk/guidance/ng138/resources/ pneumonia-communityacquired-antimicrobial-prescribing-pdf66141726069445.\n'
        ),
        bibliografiaContent(
            context,
            'Valderrama-Beltrán S, Cortés J, Caro M, Cely-Andrade L, Osorio-Pinzón J, Gualtero S, et al. Guía de Práctica Clínica para el Diagnóstico y Manejo de las Infecciones de Piel y Tejidos Blandos en Colombia. Infectio 2019; 23(4): 318-346.\n'
        ),
        bibliografiaContent(
            context,
            'Sartelli M, Chichom-Mefire A, Labricciosa FM, Hardcastle T, Abu-Zidan FM, Adesunkanmi AK, et al. The management of intra-abdominal infections from a global perspective: 2017 WSES guidelines for management of intra-abdominal infections. World J Emerg Surg. 2017.\n'
        ),
        bibliografiaContent(
            context,
            'Di Saverio S, Podda M, De Simone B, Ceresoli M, Augustin G, Gori A, et al. Diagnosis and treatment of acute appendicitis: 2020 update of the WSES Jerusalem guidelines. World J Emerg Surg. 2020;15(1):27.\n'
        ),
        bibliografiaContent(
            context,
            'Pisano M, Allievi N, Gurusamy K, Borzellino G, Cimbanassi S, Boerna D, et al. 2020 World Society of Emergency Surgery updated guidelines for the diagnosis and treatment of acute calculus cholecystitis. World J Emerg Surg. 2020;15(1).\n'
        ),
        bibliografiaContent(
            context,
            'Sartelli M, Weber DG, Kluger Y, Ansaloni L, Coccolini F, Abu-Zidan F, et al. 2020 update of the WSES guidelines for the management of acute colonic diverticulitis in the emergency setting. World J Emerg Surg. 2020;15(1).\n'
        ),
        bibliografiaContent(
            context,
            'Oñate J, Pallares C, Esparza G, Jimenez A, Berrio I, Osorio-pinzón J, et al. Consensus Recommendations Based on Evidence for Abdominal Sepsis in the Pediatric and Adult Population of Colombia. Infectio 2021; 25(4): 212-240.\n'
        ),
        bibliografiaContent(
            context,
            'Perrone G, Sartelli M, Mario G, Chichom-Mefire A, Labricciosa FM, Abu-Zidan FM, et al. Management of intra-abdominal-infections: 2017 World Society of Emergency Surgery guidelines summary focused on remote areas and low-income nations. Int J Infect Dis. 2020; 99:140-148.\n'
        ),
        bibliografiaContent(
            context,
            'Cortés JA, Perdomo D, Morales R, Álvarez CA, Cuervo SI, Leal AL, et al. [Clinical practice guidelines for the diagnosis and treatment of community acquired uncomplicated urinary tract infections in women]. Rev. Fac. Med. 2015;63(4):565-81.\n'
        ),
        bibliografiaContent(
            context,
            'Horan TC, Gaynes RP, Martone WJ, Jarvis WR, Emori TG. CDC definitions of nosocomial surgical site infections, 1992: a modification of CDC definitions of surgical wound infections. Infect Control Hosp Epidemiol. 1992;13(10):606-8.\n'
        ),
        bibliografiaContent(
            context,
            'ASA Physical Status Classification System [Internet]. American Society of Anesthesiologists. (2020). Disponible en: https://www.asahq.org/standards-and-guidelines/asa-physical-status-classification-system.\n'
        ),
        bibliografiaContent(
            context,
            'Global guidelines for the prevention of surgical site infection, second edition. Geneva: World Health Organization. 2018.\n'
        ),
        bibliografiaContent(
            context,
            'Berríos-Torres SI, Umscheid CA, Bratzler DW, Leas B, Stone EC, Kelz RR, Reinke CE, et al; Healthcare Infection Control Practices Advisory Committee. Centers for Disease Control and Prevention Guideline for the Prevention of Surgical Site Infection, 2017. JAMA Surg. 2017;152(8):784-791.\n'
        ),
        bibliografiaContent(
            context,
            'Brocard E, Reveiz L, Régnaux JP, Abdala V, Ramón-Pardo P, Del Rio Bueno A. Antibiotic prophylaxis for surgical procedures: a scoping review. Rev Panam Salud Publica. 2021 May 26;45:e62\n'
        ),
      ],
    );
  }

  Widget onlineContenido(context) {
    CollectionReference contenidos = FirebaseFirestore.instance.collection('Contenidos');
    return new StreamBuilder(
      stream: contenidos.doc("Bibliografia").snapshots(),
        builder: (context, snapshot){
        if(!snapshot.hasData) return offlineContenido(context);
        //print(snapshot.data['parrafos'][0]);
        return Column(
          children: new List.generate(snapshot.data['parrafos'].length, (index) => bibliografiaContent(context, snapshot.data['parrafos'][index])),
        );
        }
    );
  }


  Widget bibliografiaContent(context, String b){
    return new ListTile(
      leading: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              children: [
                TextSpan(
                    text: "•",
                    style: _estiloLetra1Bold(context)
                ),
              ]
          )
      ),
      title: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
              children: [
                TextSpan(
                    text: b,
                    style: _estiloLetra1(context)
                ),
              ]
          )
      ),
    );

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
        right: MediaQuery.of(context).size.width*0.05,
        left: MediaQuery.of(context).size.width*0.05
    );
  }

}

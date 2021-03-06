
import 'dart:ffi';

import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/manipularImagen.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_apendicitis.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_colecistitis.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_cultivo.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_diverticulitis.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_hemocultivo.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_imagenes.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_menu.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_procalcitonina.dart';
import 'package:acin/screens/InfeccionIntraabdominal/infeccion_intraabdominal_recomendaciones.dart';
import 'package:acin/screens/InfeccionIntraabdominal/intraabdominal_clasificacion.dart';
import 'package:acin/screens/InfeccionIntraabdominal/intraabdominal_evaluacion_clinica.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/absceso_purulento.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/erisipela.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/fascitis.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/impetigo.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/piomiositis.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_blandos_manejo_ambulatorio.dart';
import 'package:acin/screens/InfeccionPielTejidosBlandos/tejidos_menu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/infeccion_tractu_urinario_menu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/tracto_urinario_diagnostico.dart';
import 'package:acin/screens/InfeccionTractoUrinario/tracto_urinario_tratamiento_cistitis.dart';
import 'package:acin/screens/InfeccionTractoUrinario/tracto_urinario_tratamiento_pielonefritis.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/CRB65.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/CURB65.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/antigeno_unitario_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/deteccion_virus_influenza_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/hemocultivo_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/manejo_ambulatorio_hospitalario_NAC_tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_grave_NAC.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_grave_con_factores.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_grave_sin_factores.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_grave_tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_leve_tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_moderada_con_factores.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_moderada_sin_factores.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/nac_moderado_Tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/neumonia_adquirida_en_comunidad.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/procalcitonina_NAC_Tratamiento.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/psi.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/signos_sintomas_NAC.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/tinticion_gram_NAC_diagnostico.dart';
import 'package:acin/screens/NeumoniaAdquiridaEnComunidad/tratamiento_antimicrobiano_NAC_Tratamiento.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/clasificacion_isq.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/descolonizacion_profilaxis_quirurgica.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/factores_riesgo_isq.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/intraoperatoria_profilaxis.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/posoperatoria_profilaxis.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/preoperatorio_profilaxis.dart';
import 'package:acin/screens/ProfilaxisQuirurgica/profilaxis_quirurgica_menu.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

import 'busqueda.dart';

class Busqueda extends SearchDelegate<String>{
  String chosenWord='';

  final elements=[
    'Absceso diagn??stico',
    'Absceso tratamiento',
    'Ambulatorio u hospitalario, manejo infecci??n de piel y tejidos blandos',
    'Ambulatorio u hospitalario, manejo neumonia adquirirda en la comunidad',
    'Ant??geno urinario, neumonia adquirirda en la comunidad',
    'Apendicitis signos y s??ntomas',
    'Apendicitis tratamiento',
    'aureus Staphylococcus, descolonizaci??n',
    'Cabeza y cuello, cirug??a',
    'Carb??nculo diagn??stico',
    'Carb??nculo tratamiento',
    'Cardiaca, cirug??a',
    'Celulitis diagn??stico',
    'Celulitis tratamiento',
    'Cirug??a cardiaca',
    'Cirug??a de cabeza y cuello',
    'Cirug??a de mama',
    'Cirug??a gastrointestinal',
    'Cirug??a ginecol??gica',
    'Cirug??a ortop??dica',
    'Cirug??a tor??cica',
    'Cirug??a urol??gica',
    'Cirug??a vascular perif??rica',
    'Cistitis no complicada diagn??stico',
    'Cistitis no complicada tratamiento',
    'Clasificaci??n infecci??n intraabdominal',
    'Clasificaci??n, infecci??n del sitio quir??rgico',
    'Colecistitis signos y s??ntomas',
    'Colecistitis tratamiento',
    'CRB65',
    'Criterios, neumon??a adquirida en la comunidad grave',
    'Cultivo de esputo, neumon??a adquirida en la comunidad',
    'Cultivos, infecci??n intraabdominal',
    'CURB65',
    'Descolonizaci??n de Staphylococcus aureus',
    'Diagn??stico absceso',
    'Diagn??stico carb??nculo',
    'Diagn??stico celulitis',
    'Diagn??stico cistitis no complicada',
    'Diagn??stico ectima',
    'Diagn??stico erisipela',
    'Diagn??stico fascitis necrosante',
    'Diagn??stico for??nculo'
    'Diagn??stico imp??tigo',
    'Diagn??stico infecci??n intraabdominal',
    'Diagn??stico neumon??a adquirida en la comunidad',
    'Diagn??stico pielonefritis no complicada',
    'Diagn??stico piomiositis',
    'Diverticulitis signos y s??ntomas',
    'Diverticulitis tratamiento',
    'Ectima diagn??stico',
    'Ectima tratamiento',
    'Erisipela diagn??stico',
    'Erisipela tratamiento',
    'Factores de riesgo, infecci??n del sitio quir??rgico',
    'Fascitis necrosante diagn??stico',
    'Fascitis necrosante tratamiento',
    'For??nculo diagn??stico',
    'For??nculo tratamiento',
    'Gastrointestinal, cirug??a',
    'Ginecol??gica, cirug??a',
    'Gram tinci??n, neumon??a adquirida en la comunidad',
    'Hemocultivos, infecci??n intraabdominal',
    'Hemocultivos, neumonia adquirirda en la comunidad',
    'Hospitalario o ambulatorio, manejo infecci??n de piel y tejidos blandos',
    'Hospitalario o ambulatorio, manejo neumonia adquirirda en la comunidad',
    'Im??genes diagnosticas, infecci??n intraabdominal',
    'Imp??tigo diagn??stico',
    'Imp??tigo tratamiento',
    'Infecci??n de piel y tejidos blandos',
    'Infecci??n de piel y tejidos blandos manejo ambulatorio u hospitalario',
    'Infecci??n del sitio quir??rgico clasificaci??n',
    'Infecci??n del sitio quir??rgico factores de riesgo',
    'Infecci??n del tracto urinario',
    'Infecci??n intraabdominal',
    'Infecci??n intraabdominal clasificaci??n',
    'Infecci??n intraabdominal cultivos',
    'Infecci??n intraabdominal evaluaci??n cl??nica',
    'Infecci??n intraabdominal hemocultivos',
    'Infecci??n intraabdominal im??genes diagnosticas',
    'Infecci??n intraabdominal procalcitonina',
    'Infecci??n intraabdominal tratamiento recomendaciones generales',
    'Mama, cirug??a',
    'Neumon??a adquirida en la comunidad',
    'Neumon??a adquirida en la comunidad ant??geno urinario',
    'Neumon??a adquirida en la comunidad detecci??n del virus de la influenza',
    'Neumon??a adquirida en la comunidad grave criterios',
    'Neumon??a adquirida en la comunidad grave tratamiento',
    'Neumon??a adquirida en la comunidad hemocultivos',
    'Neumon??a adquirida en la comunidad leve tratamiento',
    'Neumon??a adquirida en la comunidad manejo ambulatorio u hospitalario',
    'Neumon??a adquirida en la comunidad moderada tratamiento',
    'Neumon??a adquirida en la comunidad procalcitonina',
    'Neumon??a adquirida en la comunidad signos y s??ntomas',
    'Neumon??a adquirida en la comunidad tinci??n de gram y cultivo de esputo',
    'Neurocirug??a',
    'Ortop??dica, cirug??a',
    'Pielonefritis no complicada diagn??stico',
    'Pielonefritis no complicada tratamiento',
    'Piomiositis diagn??stico',
    'Piomiositis tratamiento',
    'Procalcitonina, infecci??n intraabdominal',
    'Procalcitonina, neumonia adquirirda en la comunidad',
    'Profilaxis quir??rgica',
    'Profilaxis quir??rgica intraoperatoria',
    'Profilaxis quir??rgica posoperatoria',
    'Profilaxis quir??rgica preoperatoria',
    'PSI',
    'Signos y s??ntomas apendicitis',
    'Signos y s??ntomas colecistitis',
    'Signos y s??ntomas diverticulitis',
    'Signos y s??ntomas neumonia adquirirda en la comunidad',
    'Staphylococcus aureus, descolonizaci??n',
    'Tinci??n de gram, neumon??a adquirida en la comunidad',
    'Tor??cica, cirug??a',
    'Tratamiento apendicitis',
    'Tratamiento absceso',
    'Tratamiento carb??nculo',
    'Tratamiento celulitis',
    'Tratamiento cistitis no complicada',
    'Tratamiento colecistitis',
    'Tratamiento diverticulitis',
    'Tratamiento ectima',
    'Tratamiento erisipela',
    'Tratamiento fascitis necrosante',
    'Tratamiento for??nculo',
    'Tratamiento imp??tigo',
    'Tratamiento infecci??n intraabdominal recomendaciones generales',
    'Tratamiento neumon??a adquirida en la comunidad grave',
    'Tratamiento neumon??a adquirida en la comunidad leve',
    'Tratamiento neumon??a adquirida en la comunidad moderada',
    'Tratamiento pielonefritis no complicada',
    'Tratamiento piomiositis',
    'Urol??gica, cirug??a',
    'Vascular periferica, cirug??a',
    'Virus de la influenza, detecci??n neumon??a adquirida en la comunidad',

    'absceso diagn??stico',
    'absceso tratamiento',
    'ambulatorio u hospitalario, manejo infecci??n de piel y tejidos blandos',
    'ambulatorio u hospitalario, manejo neumonia adquirirda en la comunidad',
    'ant??geno urinario, neumonia adquirirda en la comunidad',
    'apendicitis signos y s??ntomas',
    'apendicitis tratamiento',
    'cabeza y cuello, cirug??a',
    'carb??nculo diagn??stico',
    'carb??nculo tratamiento',
    'cardiaca, cirug??a',
    'celulitis diagn??stico',
    'celulitis tratamiento',
    'cirug??a cardiaca',
    'cirug??a de cabeza y cuello',
    'cirug??a de mama',
    'cirug??a gastrointestinal',
    'cirug??a ginecol??gica',
    'cirug??a ortop??dica',
    'cirug??a tor??cica',
    'cirug??a urol??gica',
    'cirug??a vascular perif??rica',
    'cistitis no complicada diagn??stico',
    'cistitis no complicada tratamiento',
    'clasificaci??n infecci??n intraabdominal',
    'clasificaci??n, infecci??n del sitio quir??rgico',
    'colecistitis signos y s??ntomas',
    'colecistitis tratamiento',
    'crb65',
    'criterios, neumon??a adquirida en la comunidad grave',
    'cultivo de esputo, neumon??a adquirida en la comunidad',
    'cultivos, infecci??n intraabdominal',
    'curb65',
    'descolonizaci??n de Staphylococcus aureus',
    'diagn??stico absceso',
    'diagn??stico carb??nculo',
    'diagn??stico celulitis',
    'diagn??stico cistitis no complicada',
    'diagn??stico ectima',
    'diagn??stico erisipela',
    'diagn??stico fascitis necrosante',
    'diagn??stico for??nculo',
    'diagn??stico imp??tigo',
    'diagn??stico infecci??n intraabdominal',
    'diagn??stico neumon??a adquirida en la comunidad',
    'diagn??stico pielonefritis no complicada',
    'diagn??stico piomiositis',
    'diverticulitis signos y s??ntomas',
    'diverticulitis tratamiento',
    'ectima diagn??stico',
    'ectima tratamiento',
    'erisipela diagn??stico',
    'erisipela tratamiento',
    'factores de riesgo, infecci??n del sitio quir??rgico',
    'fascitis necrosante diagn??stico',
    'fascitis necrosante tratamiento',
    'for??nculo diagn??stico',
    'for??nculo tratamiento',
    'gastrointestinal, cirug??a',
    'ginecol??gica, cirug??a',
    'gram tinci??n, neumon??a adquirida en la comunidad',
    'hemocultivos, infecci??n intraabdominal',
    'hemocultivos, neumonia adquirirda en la comunidad',
    'hospitalario o ambulatorio, manejo infecci??n de piel y tejidos blandos',
    'hospitalario o ambulatorio, manejo neumonia adquirirda en la comunidad',
    'im??genes diagnosticas, infecci??n intraabdominal',
    'imp??tigo diagn??stico',
    'imp??tigo tratamiento',
    'infecci??n de piel y tejidos blandos',
    'infecci??n de piel y tejidos blandos manejo ambulatorio u hospitalario',
    'infecci??n del sitio quir??rgico clasificaci??n',
    'infecci??n del sitio quir??rgico factores de riesgo',
    'infecci??n del tracto urinario',
    'infecci??n intraabdominal',
    'infecci??n intraabdominal clasificaci??n',
    'infecci??n intraabdominal cultivos',
    'infecci??n intraabdominal evaluaci??n cl??nica',
    'infecci??n intraabdominal hemocultivos',
    'infecci??n intraabdominal im??genes diagnosticas',
    'infecci??n intraabdominal procalcitonina',
    'infecci??n intraabdominal tratamiento recomendaciones generales',
    'mama, cirug??a',
    'neumon??a adquirida en la comunidad',
    'neumon??a adquirida en la comunidad ant??geno urinario',
    'neumon??a adquirida en la comunidad detecci??n del virus de la influenza',
    'neumon??a adquirida en la comunidad grave criterios',
    'neumon??a adquirida en la comunidad grave tratamiento',
    'neumon??a adquirida en la comunidad hemocultivos',
    'neumon??a adquirida en la comunidad leve tratamiento',
    'neumon??a adquirida en la comunidad manejo ambulatorio u hospitalario',
    'neumon??a adquirida en la comunidad moderada tratamiento',
    'neumon??a adquirida en la comunidad procalcitonina',
    'neumon??a adquirida en la comunidad signos y s??ntomas',
    'neumon??a adquirida en la comunidad tinci??n de gram y cultivo de esputo',
    'neurocirug??a',
    'ortop??dica, cirug??a',
    'pielonefritis no complicada diagn??stico',
    'pielonefritis no complicada tratamiento',
    'piomiositis diagn??stico',
    'piomiositis tratamiento',
    'procalcitonina, infecci??n intraabdominal',
    'procalcitonina, neumonia adquirirda en la comunidad',
    'profilaxis quir??rgica',
    'profilaxis quir??rgica intraoperatoria',
    'profilaxis quir??rgica posoperatoria',
    'profilaxis quir??rgica preoperatoria',
    'psi',
    'signos y s??ntomas apendicitis',
    'signos y s??ntomas colecistitis',
    'signos y s??ntomas diverticulitis',
    'signos y s??ntomas neumonia adquirirda en la comunidad',
    'staphylococcus aureus, descolonizaci??n',
    'tinci??n de gram, neumon??a adquirida en la comunidad',
    'tor??cica, cirug??a',
    'tratamiento apendicitis',
    'tratamiento absceso',
    'tratamiento carb??nculo',
    'tratamiento celulitis',
    'tratamiento cistitis no complicada',
    'tratamiento colecistitis',
    'tratamiento diverticulitis',
    'tratamiento ectima',
    'tratamiento erisipela',
    'tratamiento fascitis necrosante',
    'tratamiento for??nculo',
    'tratamiento imp??tigo',
    'tratamiento infecci??n intraabdominal recomendaciones generales',
    'tratamiento neumon??a adquirida en la comunidad grave',
    'tratamiento neumon??a adquirida en la comunidad leve',
    'tratamiento neumon??a adquirida en la comunidad moderada',
    'tratamiento pielonefritis no complicada',
    'tratamiento piomiositis',
    'urol??gica, cirug??a',
    'vascular periferica, cirug??a',
    'virus de la influenza, detecci??n neumon??a adquirida en la comunidad',
  ];
  final suggestions=[''];

  List<Widget> buildActions(BuildContext context){
    //Actions for app bar

    return [
      IconButton(
        color: Colors.black,
          icon: Icon(Icons.clear_outlined),//clear_outlined
          onPressed: (){
            query='';
          })

    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    //Leading icon on the left of the app bar
    return IconButton(
      color: Colors.black,
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          close(context, "resultado");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults5
    if(query=='Neumon??a adquirida en la comunidad'
        || query=='neumon??a adquirida en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new NeumoniaAdquiridaEnComunidad()));
              },
              title: Text('Neumon??a adquirida en la comunidad'),
              leading: Image.asset('assets/m1.png')
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(  query=='Diagn??stico neumon??a adquirida en la comunidad'
        || query=='diagn??stico neumon??a adquirida en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new NeumoniaAdquiridaEnComunidad()));
                },
                title: Text('Diagn??stico Neumon??a adquirida en la comunidad'),
                leading: Image.asset('assets/m1.png')
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad signos y s??ntomas'
        || query=='neumon??a adquirida en la comunidad signos y s??ntomas'
        || query=='Signos y s??ntomas neumonia adquirirda en la comunidad'
        || query=='signos y s??ntomas neumonia adquirirda en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new SignosSintomasNAC()));
              },
              title: Text('Signos y s??ntomas, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='Neumon??a adquirida en la comunidad grave criterios'
        || query=='neumon??a adquirida en la comunidad grave criterios'
        || query=='Criterios, neumon??a adquirida en la comunidad grave'
        || query=='criterios, neumon??a adquirida en la comunidad grave'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new NACGrave()));
              },
              title: Text('Criterios NAC Grave'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='Neumon??a adquirida en la comunidad tinci??n de gram y cultivo de esputo'
        || query=='neumon??a adquirida en la comunidad tinci??n de gram y cultivo de esputo'
        || query=='Tinci??n de gram, neumon??a adquirida en la comunidad'
        || query=='tinci??n de gram, neumon??a adquirida en la comunidad'
        || query=='Gram tinci??n, neumon??a adquirida en la comunidad'
        || query=='gram tinci??n, neumon??a adquirida en la comunidad'
        || query=='Cultivo de esputo, neumon??a adquirida en la comunidad'
        || query=='cultivo de esputo, neumon??a adquirida en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TinticionGramNACDiagnostico()));
              },
              title: Text('Tinci??n de Gram y cultivo de esputo, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='Neumon??a adquirida en la comunidad hemocultivos'
        || query=='neumon??a adquirida en la comunidad hemocultivos'
        || query=='Hemocultivos, neumonia adquirirda en la comunidad'
        || query=='hemocultivos, neumonia adquirirda en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new HemocultivoNACDiagnostico()));
              },
              title: Text('Hemocultivos NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='Neumon??a adquirida en la comunidad ant??geno urinario'
        || query=='neumon??a adquirida en la comunidad ant??geno urinario'
        || query=='Ant??geno urinario, neumonia adquirirda en la comunidad'
        || query=='ant??geno urinario, neumonia adquirirda en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AntigenoUnitarioNACDiagnostico()));
              },
              title: Text('Ant??geno urinario NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad detecci??n del virus de la influenza'
        || query=='neumon??a adquirida en la comunidad detecci??n del virus de la influenza'
        || query=='Virus de la influenza, detecci??n neumon??a adquirida en la comunidad'
        || query=='virus de la influenza, detecci??n neumon??a adquirida en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DeteccionVirusInfluenzaNACDiagnostico()));
              },
              title: Text('Detecci??n del virus de la influenza, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad manejo ambulatorio u hospitalario'
        || query=='neumon??a adquirida en la comunidad manejo ambulatorio u hospitalario'
        || query=='Ambulatorio u hospitalario, manejo neumonia adquirirda en la comunidad'
        || query=='ambulatorio u hospitalario, manejo neumonia adquirirda en la comunidad'
        || query=='Hospitalario o ambulatorio, manejo neumonia adquirirda en la comunidad'
        || query=='hospitalario o ambulatorio, manejo neumonia adquirirda en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ManejoAmbulatorioUHospitalarioNACTratamiento()));
              },
              title: Text('Manejo ambulatorio u hospitalario, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='PSI'
        || query=='psi'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new PSI()));
              },
              title: Text('PSI'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='CURB65'
        || query=='curb65'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new CURB65()));
              },
              title: Text('CURB65'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='CRB65'
        || query=='crb65'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new CRB65()));
              },
              title: Text('CRB65'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad procalcitonina'
        || query=='neumon??a adquirida en la comunidad procalcitonina'
        || query=='Procalcitonina, neumonia adquirirda en la comunidad'
        || query=='procalcitonina, neumonia adquirirda en la comunidad'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ProcalcitoninaNACTratamiento()));
              },
              title: Text('Procalcitonina NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad leve tratamiento'
        || query=='neumon??a adquirida en la comunidad leve tratamiento'
        || query=='Tratamiento neumon??a adquirida en la comunidad leve'
        || query=='tratamiento neumon??a adquirida en la comunidad leve'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new NACLeveNACTratamiento()));
              },
              title: Text('Tratamiento antimicrobiano NAC leve'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad moderada tratamiento'
        || query=='neumon??a adquirida en la comunidad moderada tratamiento'
        || query=='Tratamiento neumon??a adquirida en la comunidad moderada'
        || query=='tratamiento neumon??a adquirida en la comunidad moderada'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new NACModeradoNACTratamiento()));
              },
              title: Text('Tratamiento antimicrobiano NAC moderada'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumon??a adquirida en la comunidad grave tratamiento'
        || query=='neumon??a adquirida en la comunidad grave tratamiento'
        || query=='Tratamiento neumon??a adquirida en la comunidad grave'
        || query=='tratamiento neumon??a adquirida en la comunidad grave'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new NACGraveTratamiento()));
              },
              title: Text('Tratamiento antimicrobiano NAC grave'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  ********* Infecci??n del tracto Urinario   ********

    if(query=='Infecci??n del tracto urinario'
        || query=='infecci??n del tracto urinario'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new InfeccionTractoUrinarioMenu()));
              },
              title: Text('Infecci??n del tracto urinario'),
              leading: Image.asset('assets/m2.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Diagn??stico cistitis no complicada'
        || query=='diagn??stico cistitis no complicada'
        || query=='Cistitis no complicada diagn??stico'
        || query=='cistitis no complicada diagn??stico'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TractoUrinarioDiagnosticoCistitis()));
              },
              title: Text('Diagn??stico cistitis no complicada'),
              leading: Image.asset('assets/m2.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
           query=='Diagn??stico pielonefritis no complicada'
        || query=='diagn??stico pielonefritis no complicada'
        || query=='Pielonefritis no complicada diagn??stico'
        || query=='pielonefritis no complicada diagn??stico'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TractoUrinarioDiagnosticoCistitis()));
              },
              title: Text('Diagn??stico pielonefritis no complicada'),
              leading: Image.asset('assets/m2.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Tratamiento cistitis no complicada'
        || query=='tratamiento cistitis no complicada'
        || query=='Cistitis no complicada tratamiento'
        || query=='cistitis no complicada tratamiento'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TractoUrinarioTratamientoCistitis()));
              },
              title: Text('Tratamiento cistitis no complicada'),
              leading: Image.asset('assets/m2.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Tratamiento pielonefritis no complicada'
        || query=='tratamiento pielonefritis no complicada'
        || query=='Pielonefritis no complicada tratamiento'
        || query=='pielonefritis no complicada tratamiento'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TractoUrinarioTratamientoPielonefritis()));
              },
              title: Text('Tratamiento pielonefritis no complicada'),
              leading: Image.asset('assets/m2.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  ************* Infecci??n Intraabdominal  ****************

    if(    query=='Infecci??n intraabdominal'
        || query=='infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new InfeccionIntraAbdominalMenu()));
              },
              title: Text('Infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Diagn??stico infecci??n intraabdominal'
        || query=='diagn??stico infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new InfeccionIntraAbdominalMenu()));
              },
              title: Text('Diagn??stico Infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal clasificaci??n'
        || query=='infecci??n intraabdominal clasificaci??n'
        || query=='Clasificaci??n infecci??n intraabdominal'
        || query=='clasificaci??n infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalClasificacion()));
              },
              title: Text('Clasificaci??n Infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal evaluaci??n cl??nica'
        || query=='infecci??n intraabdominal evaluaci??n cl??nica'
        || query=='Apendicitis signos y s??ntomas'
        || query=='apendicitis signos y s??ntomas'
        || query=='Signos y s??ntomas apendicitis'
        || query=='signos y s??ntomas apendicitis'
        || query=='Colecistitis signos y s??ntomas'
        || query=='colecistitis signos y s??ntomas'
        || query=='Signos y s??ntomas colecistitis'
        || query=='signos y s??ntomas colecistitis'
        || query=='Diverticulitis signos y s??ntomas'
        || query=='diverticulitis signos y s??ntomas'
        || query=='Signos y s??ntomas diverticulitis'
        || query=='signos y s??ntomas diverticulitis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalEvaluacionClinica()));
              },
              title: Text('Evaluaci??n cl??nica infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal hemocultivos'
        || query=='infecci??n intraabdominal hemocultivos'
        || query=='Hemocultivos, infecci??n intraabdominal'
        || query=='hemocultivos, infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalHemocultivo()));
              },
              title: Text('Hemocultivos, infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal cultivos'
        || query=='infecci??n intraabdominal cultivos'
        || query=='Cultivos, infecci??n intraabdominal'
        || query=='cultivos, infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalCultivo()));
              },
              title: Text('Cultivos, infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal procalcitonina'
        || query=='infecci??n intraabdominal procalcitonina'
        || query=='Procalcitonina, infecci??n intraabdominal'
        || query=='procalcitonina, infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalProcalcitonina()));
              },
              title: Text('Procalcitonina, infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal im??genes diagnosticas'
        || query=='infecci??n intraabdominal im??genes diagnosticas'
        || query=='Im??genes diagnosticas, infecci??n intraabdominal'
        || query=='im??genes diagnosticas, infecci??n intraabdominal'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalImagenes()));
              },
              title: Text('Im??genes diagnosticas, infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n intraabdominal tratamiento recomendaciones generales'
        || query=='infecci??n intraabdominal tratamiento recomendaciones generales'
        || query=='Tratamiento infecci??n intraabdominal recomendaciones generales'
        || query=='tratamiento infecci??n intraabdominal recomendaciones generales'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalRecomendaciones()));
              },
              title: Text('Tratamiento recomendaciones generales infecci??n intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Apendicitis tratamiento'
        || query=='apendicitis tratamiento'
        || query=='Tratamiento apendicitis'
        || query=='tratamiento apendicitis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalApendicitis()));
              },
              title: Text('Tratamiento apendicitis'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Colecistitis tratamiento'
        || query=='colecistitis tratamiento'
        || query=='Tratamiento colecistitis'
        || query=='tratamiento colecistitis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalColecistitis()));
              },
              title: Text('Tratamiento colecistitis'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Diverticulitis tratamiento'
        || query=='diverticulitis tratamiento'
        || query=='Tratamiento diverticulitis'
        || query=='tratamiento diverticulitis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraabdominalDiverticulitis()));
              },
              title: Text('Tratamiento diverticulitis'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  ******************* Infecci??n de Piel y Tejidos blandos   *******************

    if(    query=='Infecci??n de piel y tejidos blandos'
        || query=='infecci??n de piel y tejidos blandos'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TejidosMenu()));
              },
              title: Text('Infecci??n de piel y tejidos blandos'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Imp??tigo diagn??stico'
        || query=='imp??tigo diagn??stico'
        || query=='Diagn??stico imp??tigo'
        || query=='diagn??stico imp??tigo'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Impetigo()));
              },
              title: Text('Diagn??stico Imp??tigo'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
           query=='Imp??tigo tratamiento'
        || query=='imp??tigo tratamiento'
        || query=='Tratamiento imp??tigo'
        || query=='tratamiento imp??tigo'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Impetigo()));
              },
              title: Text('Tratamiento Imp??tigo'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
           query=='Ectima diagn??stico'
        || query=='ectima diagn??stico'
        || query=='Diagn??stico ectima'
        || query=='diagn??stico ectima'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Impetigo()));
              },
              title: Text('Diagn??stico Ectima '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Ectima tratamiento'
        || query=='ectima tratamiento'
        || query=='Tratamiento ectima'
        || query=='tratamiento ectima'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Impetigo()));
              },
              title: Text('Tratamiento Ectima '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }


    if(    query=='Erisipela diagn??stico'
        || query=='erisipela diagn??stico'
        || query=='Diagn??stico erisipela'
        || query=='diagn??stico erisipela'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Erisipela()));
              },
              title: Text('Diagn??stico Erisipela '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Erisipela tratamiento'
        || query=='erisipela tratamiento'
        || query=='Tratamiento erisipela'
        || query=='tratamiento erisipela'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Erisipela()));
              },
              title: Text('Tratamiento Erisipela '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Celulitis diagn??stico'
        || query=='celulitis diagn??stico'
        || query=='Diagn??stico celulitis'
        || query=='diagn??stico celulitis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Erisipela()));
              },
              title: Text('Diagn??stico Celulitis '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Celulitis tratamiento'
        || query=='celulitis tratamiento'
        || query=='Tratamiento celulitis'
        || query=='tratamiento celulitis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Erisipela()));
              },
              title: Text('Tratamiento Celulitis '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Fascitis necrosante diagn??stico'
        || query=='fascitis necrosante diagn??stico'
        || query=='Diagn??stico fascitis necrosante'
        || query=='diagn??stico fascitis necrosante'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Fascitis()));
              },
              title: Text('Diagn??stico Fascitis necrosante '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Fascitis necrosante tratamiento'
        || query=='fascitis necrosante tratamiento'
        || query=='Tratamiento fascitis necrosante'
        || query=='tratamiento fascitis necrosante'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Fascitis()));
              },
              title: Text('Tratamiento Fascitis necrosante '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Absceso diagn??stico'
        || query=='absceso diagn??stico'
        || query=='Diagn??stico absceso'
        || query=='diagn??stico absceso'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AbscesoPurulento()));
              },
              title: Text('Diagn??stico Absceso '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Absceso tratamiento'
        || query=='absceso tratamiento'
        || query=='Tratamiento absceso'
        || query=='tratamiento absceso'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AbscesoPurulento()));
              },
              title: Text('Tratamiento Absceso '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Carb??nculo diagn??stico'
        || query=='carb??nculo diagn??stico'
        || query=='Diagn??stico carb??nculo'
        || query=='diagn??stico carb??nculo'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AbscesoPurulento()));
              },
              title: Text('Diagn??stico Carb??nculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Carb??nculo tratamiento'
        || query=='carb??nculo tratamiento'
        || query=='Tratamiento carb??nculo'
        || query=='tratamiento carb??nculo'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AbscesoPurulento()));
              },
              title: Text('Tratamiento Carb??nculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='For??nculo diagn??stico'
        || query=='for??nculo diagn??stico'
        || query=='Diagn??stico for??nculo'
        || query=='diagn??stico for??nculo'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AbscesoPurulento()));
              },
              title: Text('Diagn??stico For??nculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='For??nculo tratamiento'
        || query=='for??nculo tratamiento'
        || query=='Tratamiento for??nculo'
        || query=='tratamiento for??nculo'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new AbscesoPurulento()));
              },
              title: Text('Tratamiento For??nculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Piomiositis diagn??stico'
        || query=='piomiositis diagn??stico'
        || query=='Diagn??stico piomiositis'
        || query=='diagn??stico piomiositis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Piomiositis()));
              },
              title: Text('Diagn??stico Piomiositis '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Piomiositis tratamiento'
        || query=='piomiositis tratamiento'
        || query=='Tratamiento piomiositis'
        || query=='tratamiento piomiositis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Piomiositis()));
              },
              title: Text('Tratamiento Piomiositis '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infecci??n de piel y tejidos blandos manejo ambulatorio u hospitalario'
        || query=='infecci??n de piel y tejidos blandos manejo ambulatorio u hospitalario'
        || query=='Ambulatorio u hospitalario, manejo infecci??n de piel y tejidos blandos'
        || query=='ambulatorio u hospitalario, manejo infecci??n de piel y tejidos blandos'
        || query=='Hospitalario o ambulatorio, manejo infecci??n de piel y tejidos blandos'
        || query=='hospitalario o ambulatorio, manejo infecci??n de piel y tejidos blandos'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TejidosBlandosManejoAmbulatorio()));
              },
              title: Text('Manejo ambulatorio u hospitalario, infecci??n de Piel y Tejidos blandos'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  **************  Profilaxis Quir??rgica ******************

    if(    query=='Profilaxis quir??rgica'
        || query=='profilaxis quir??rgica'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ProfilaxisQuirurgicaMenu()));
              },
              title: Text('Profilaxis quir??rgica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Infecci??n del sitio quir??rgico clasificaci??n'
        || query=='infecci??n del sitio quir??rgico clasificaci??n'
        || query=='Clasificaci??n, infecci??n del sitio quir??rgico'
        || query=='clasificaci??n, infecci??n del sitio quir??rgico'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ClasificacionISQProfilaxisQuirurgica()));
              },
              title: Text('Clasificaci??n de la Infecci??n del Sitio Quir??rgico (ISQ)'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Infecci??n del sitio quir??rgico factores de riesgo'
        || query=='infecci??n del sitio quir??rgico factores de riesgo'
        || query=='Factores de riesgo, infecci??n del sitio quir??rgico'
        || query=='factores de riesgo, infecci??n del sitio quir??rgico'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new FactoresRiesgoISQProfilaxisQuirurgica()));
              },
              title: Text('Factores de riesgo para Infecci??n del Sitio Quir??rgico (ISQ)'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Profilaxis quir??rgica preoperatoria'
        || query=='profilaxis quir??rgica preoperatoria'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new PreoperatoriaProfilaxisQuirurgica()));
              },
              title: Text('Profilaxis quir??rgica antimicrobiana Preoperatoria'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Profilaxis quir??rgica intraoperatoria'
        || query=='profilaxis quir??rgica intraoperatoria'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new IntraoperatoriaProfilaxisQuirurgica()));
              },
              title: Text('Profilaxis quir??rgica antimicrobiana Intraoperatoria'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Profilaxis quir??rgica posoperatoria'
        || query=='profilaxis quir??rgica posoperatoria'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new PosoperatoriaProfilaxisQuirurgica()));
              },
              title: Text('Profilaxis quir??rgica antimicrobiana Posoperatoria'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Descolonizaci??n de Staphylococcus aureus'
        || query=='descolonizaci??n de Staphylococcus aureus'
        || query=='Staphylococcus aureus, descolonizaci??n'
        || query=='staphylococcus aureus, descolonizaci??n'
        || query=='aureus Staphylococcus, descolonizaci??n'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DescolonizacionSAureusProfilaxisQuirurgica()));
              },
              title: Text('Descolonizaci??n Staphylococcus aureus'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a de cabeza y cuello'
        || query=='cirug??a de cabeza y cuello'
        || query=='Cabeza y cuello, cirug??a'
        || query=='cabeza y cuello, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT1.png")));
              },
              title: Text('Cirug??a de cabeza y cuello'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Neurocirug??a'
        || query=='neurocirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT2.png")));
              },
              title: Text('Neurocirug??a'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a cardiaca'
        || query=='cirug??a cardiaca'
        || query=='Cardiaca, cirug??a'
        || query=='cardiaca, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT3.png")));
              },
              title: Text('Cirug??a Cardiaca'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a vascular perif??rica'
        || query=='cirug??a vascular perif??rica'
        || query=='Vascular periferica, cirug??a'
        || query=='vascular periferica, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT4.png")));
              },
              title: Text('Cirug??a vascular perif??rica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a tor??cica'
        || query=='cirug??a tor??cica'
        || query=='Tor??cica, cirug??a'
        || query=='tor??cica, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT5.png")));
              },
              title: Text('Cirug??a Tor??cica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a gastrointestinal'
        || query=='cirug??a gastrointestinal'
        || query=='Gastrointestinal, cirug??a'
        || query=='gastrointestinal, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT6.png")));
              },
              title: Text('Cirug??a Gastrointestinal'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a ortop??dica'
        || query=='cirug??a ortop??dica'
        || query=='Ortop??dica, cirug??a'
        || query=='ortop??dica, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT7.png")));
              },
              title: Text('Cirug??a Ortop??dica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a urol??gica'
        || query=='cirug??a urol??gica'
        || query=='Urol??gica, cirug??a'
        || query=='urol??gica, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT8.png")));
              },
              title: Text('Cirug??a Urol??gica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a ginecol??gica'
        || query=='cirug??a ginecol??gica'
        || query=='Ginecol??gica, cirug??a'
        || query=='ginecol??gica, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT9.png")));
              },
              title: Text('Cirug??a Ginecol??gica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirug??a de mama'
        || query=='cirug??a de mama'
        || query=='Mama, cirug??a'
        || query=='mama, cirug??a'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ManipularImagen("assets/ProfilaxisQuirurgica/preoperatorioT10.png")));
              },
              title: Text('Cirug??a de mama'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }




    else {
      return Scaffold(
        //appBar: BarraSuperior().Barra(context, false),
        bottomNavigationBar: BarraInferior(),
        body: Center(
          child: Text('Elemento no\nencontrado',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Ancizar",
                fontStyle: FontStyle.italic,
                fontSize: 40.0),
          ),
        ),
      );
    }

  }

  Widget singleTile(context, int modulo, clase){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/MainMenu":(BuildContext context)=>MainMenu(),
        "/NAC":(BuildContext context)=>NeumoniaAdquiridaEnComunidad(),
        "/NACDiagnosticoSignos":(BuildContext context)=>SignosSintomasNAC(),
        "/NACDiagnosticoGrave":(BuildContext context)=>NACGrave(),
        "/NACDiagnosticoTincion":(BuildContext context)=>TinticionGramNACDiagnostico(),
        "/NACDiagnosticoHemocultivos":(BuildContext context)=>HemocultivoNACDiagnostico(),
        "/NACDiagnosticoAntigeno":(BuildContext context)=>AntigenoUnitarioNACDiagnostico(),
        "/NACDiagnosticoInfluenza":(BuildContext context)=>DeteccionVirusInfluenzaNACDiagnostico(),
        "/NACTratamientoManejoAmbulatorio":(BuildContext context)=>ManejoAmbulatorioUHospitalarioNACTratamiento(),
        "/NACTratamientoPSI":(BuildContext context)=>PSI(),
        "/NACTratamientoCURB65":(BuildContext context)=>CURB65(),
        "/NACTratamientoCRB65":(BuildContext context)=>CRB65(),
        "/NACTratamientoProcalcitonina":(BuildContext context)=>ProcalcitoninaNACTratamiento(),
        "/NACTratamientoAntimicrobiano":(BuildContext context)=>TratamientoAntimicrobianoNACTratamiento(),
        "/NACTratamientoNACLeve":(BuildContext context)=>NACLeveNACTratamiento(),
        "/NACTratamientoNACModerado":(BuildContext context)=>NACModeradoNACTratamiento(),
        "/NACTratamientoNACModeradoSin":(BuildContext context)=>NACModeradaSinFactoresRiesgo(),
        "/NACTratamientoNACModeradoCon":(BuildContext context)=>NACModeradaConFactoresRiesgo(),
        "/NACTratamientoNACGrave":(BuildContext context)=>NACGraveTratamiento(),
        "/NACTratamientoNACGraveSin":(BuildContext context)=>NACGraveSinFactoresRiesgo(),
        "/NACTratamientoNACGraveCon":(BuildContext context)=>NACGraveConFactoresRiesgo(),
      },
      home: Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => clase()));
              },
              title: Text('Diagn??stico Neumon??a adquirida en la comunidad'),
              leading: Image.asset('assets/m$modulo.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      ),
    );
  }


  void _ejecution(String _nombre, String _sistema, int _cantidad, int _function, BuildContext context){

    if(_function==1){
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new MainMenu()));
    }
    else if(_function==2){
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new MainMenu()));
    }
    else if(_function==3){
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new MainMenu()));
    }
    else if(_function==4){
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new MainMenu()));
    }
    else if(_function==5){

      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new MainMenu()));
    }


  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionsList=query.isEmpty?suggestions:elements.where((p)=>p.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      onTap: (){chosenWord=suggestionsList[index];
      query=chosenWord;
      showResults(context);

      },

      title: RichText(text: TextSpan(
        text: suggestionsList[index].substring(0,query.length),
        style: TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,),
        children: [
          TextSpan(
            text: suggestionsList[index].substring(query.length),
            style: TextStyle(color: Colors.grey),
          ),
        ],),
      ),
    ),
      itemCount: suggestionsList.length,
    );
  }
}

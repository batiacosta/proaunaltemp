
import 'dart:ffi';

import 'package:acin/ReusableWidgets/Caprini.dart';
import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/manipularImagen.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/EnfermedadTromboembolicaVenosa.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/CalculadoraCaprini.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ContraindicacionesMecanica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETAbdominopelvico.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETCardiovascular.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETCirugiaPlastica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETNeurologica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETObesidad.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETOrtopedia.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETToracica.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETTraumatologia.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/ETUrologico.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/FactoresRiesgoSangrado.dart';
import 'package:acin/screens/EnfermedadTromboembolicaVenosa/Tromboprofilaxis/Tromboprofilaxis.dart';
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
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/DiagnosticoITUComplicada.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/ITUComplicadaMenu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/TratamientoCistitiscomplicada.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioComplicada/TratamientoPielonefritiscomplicada.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioMenu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/infeccion_tractu_urinario_menu.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_diagnostico.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_cistitis.dart';
import 'package:acin/screens/InfeccionTractoUrinario/InfeccionTractoUrinarioNoComplicada/tracto_urinario_tratamiento_pielonefritis.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorLeve.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorModerado.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorNoControlado.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/DolorSevero.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/EnfoqueSistematico.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/MenejoDolorPosoperatorio.dart';
import 'package:acin/screens/ManejoDolorPosoperatorio/SinDolor.dart';
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
    'Absceso diagnóstico',
    'Absceso tratamiento',
    'Ambulatorio u hospitalario, manejo infección de piel y tejidos blandos',
    'Ambulatorio u hospitalario, manejo neumonia adquirirda en la comunidad',
    'Antígeno urinario, neumonia adquirirda en la comunidad',
    'Apendicitis signos y síntomas',
    'Apendicitis tratamiento',
    'aureus Staphylococcus, descolonización',
    'Cabeza y cuello, cirugía',
    'Carbúnculo diagnóstico',
    'Carbúnculo tratamiento',
    'Cardiaca, cirugía',
    'Celulitis diagnóstico',
    'Celulitis tratamiento',
    'Cirugía cardiaca',
    'Cirugía de cabeza y cuello',
    'Cirugía de mama',
    'Cirugía gastrointestinal',
    'Cirugía ginecológica',
    'Cirugía ortopédica',
    'Cirugía torácica',
    'Cirugía urológica',
    'Cirugía vascular periférica',
    'Cistitis no complicada diagnóstico',
    'Cistitis no complicada tratamiento',
    'Clasificación infección intraabdominal',
    'Clasificación, infección del sitio quirúrgico',
    'Colecistitis signos y síntomas',
    'Colecistitis tratamiento',
    'CRB65',
    'Criterios, neumonía adquirida en la comunidad grave',
    'Cultivo de esputo, neumonía adquirida en la comunidad',
    'Cultivos, infección intraabdominal',
    'CURB65',
    'Descolonización de Staphylococcus aureus',
    'Diagnóstico absceso',
    'Diagnóstico carbúnculo',
    'Diagnóstico celulitis',
    'Diagnóstico cistitis no complicada',
    'Diagnóstico ectima',
    'Diagnóstico erisipela',
    'Diagnóstico fascitis necrosante',
    'Diagnóstico forúnculo'
    'Diagnóstico impétigo',
    'Diagnóstico infección intraabdominal',
    'Diagnóstico neumonía adquirida en la comunidad',
    'Diagnóstico pielonefritis no complicada',
    'Diagnóstico piomiositis',
    'Diverticulitis signos y síntomas',
    'Diverticulitis tratamiento',
    'Ectima diagnóstico',
    'Ectima tratamiento',
    'Erisipela diagnóstico',
    'Erisipela tratamiento',
    'Factores de riesgo, infección del sitio quirúrgico',
    'Fascitis necrosante diagnóstico',
    'Fascitis necrosante tratamiento',
    'Forúnculo diagnóstico',
    'Forúnculo tratamiento',
    'Gastrointestinal, cirugía',
    'Ginecológica, cirugía',
    'Gram tinción, neumonía adquirida en la comunidad',
    'Hemocultivos, infección intraabdominal',
    'Hemocultivos, neumonia adquirirda en la comunidad',
    'Hospitalario o ambulatorio, manejo infección de piel y tejidos blandos',
    'Hospitalario o ambulatorio, manejo neumonia adquirirda en la comunidad',
    'Imágenes diagnosticas, infección intraabdominal',
    'Impétigo diagnóstico',
    'Impétigo tratamiento',
    'Infección de piel y tejidos blandos',
    'Infección de piel y tejidos blandos manejo ambulatorio u hospitalario',
    'Infección del sitio quirúrgico clasificación',
    'Infección del sitio quirúrgico factores de riesgo',
    'Infección del tracto urinario',
    'Infección intraabdominal',
    'Infección intraabdominal clasificación',
    'Infección intraabdominal cultivos',
    'Infección intraabdominal evaluación clínica',
    'Infección intraabdominal hemocultivos',
    'Infección intraabdominal imágenes diagnosticas',
    'Infección intraabdominal procalcitonina',
    'Infección intraabdominal tratamiento recomendaciones generales',
    'Mama, cirugía',
    'Neumonía adquirida en la comunidad',
    'Neumonía adquirida en la comunidad antígeno urinario',
    'Neumonía adquirida en la comunidad detección del virus de la influenza',
    'Neumonía adquirida en la comunidad grave criterios',
    'Neumonía adquirida en la comunidad grave tratamiento',
    'Neumonía adquirida en la comunidad hemocultivos',
    'Neumonía adquirida en la comunidad leve tratamiento',
    'Neumonía adquirida en la comunidad manejo ambulatorio u hospitalario',
    'Neumonía adquirida en la comunidad moderada tratamiento',
    'Neumonía adquirida en la comunidad procalcitonina',
    'Neumonía adquirida en la comunidad signos y síntomas',
    'Neumonía adquirida en la comunidad tinción de gram y cultivo de esputo',
    'Neurocirugía',
    'Ortopédica, cirugía',
    'Pielonefritis no complicada diagnóstico',
    'Pielonefritis no complicada tratamiento',
    'Piomiositis diagnóstico',
    'Piomiositis tratamiento',
    'Procalcitonina, infección intraabdominal',
    'Procalcitonina, neumonia adquirirda en la comunidad',
    'Profilaxis quirúrgica',
    'Profilaxis quirúrgica intraoperatoria',
    'Profilaxis quirúrgica posoperatoria',
    'Profilaxis quirúrgica preoperatoria',
    'PSI',
    'Signos y síntomas apendicitis',
    'Signos y síntomas colecistitis',
    'Signos y síntomas diverticulitis',
    'Signos y síntomas neumonia adquirirda en la comunidad',
    'Staphylococcus aureus, descolonización',
    'Tinción de gram, neumonía adquirida en la comunidad',
    'Torácica, cirugía',
    'Tratamiento apendicitis',
    'Tratamiento absceso',
    'Tratamiento carbúnculo',
    'Tratamiento celulitis',
    'Tratamiento cistitis no complicada',
    'Tratamiento colecistitis',
    'Tratamiento diverticulitis',
    'Tratamiento ectima',
    'Tratamiento erisipela',
    'Tratamiento fascitis necrosante',
    'Tratamiento forúnculo',
    'Tratamiento impétigo',
    'Tratamiento infección intraabdominal recomendaciones generales',
    'Tratamiento neumonía adquirida en la comunidad grave',
    'Tratamiento neumonía adquirida en la comunidad leve',
    'Tratamiento neumonía adquirida en la comunidad moderada',
    'Tratamiento pielonefritis no complicada',
    'Tratamiento piomiositis',
    'Urológica, cirugía',
    'Vascular periferica, cirugía',
    'Virus de la influenza, detección neumonía adquirida en la comunidad',

    'absceso diagnóstico',
    'absceso tratamiento',
    'ambulatorio u hospitalario, manejo infección de piel y tejidos blandos',
    'ambulatorio u hospitalario, manejo neumonia adquirirda en la comunidad',
    'antígeno urinario, neumonia adquirirda en la comunidad',
    'apendicitis signos y síntomas',
    'apendicitis tratamiento',
    'cabeza y cuello, cirugía',
    'carbúnculo diagnóstico',
    'carbúnculo tratamiento',
    'cardiaca, cirugía',
    'celulitis diagnóstico',
    'celulitis tratamiento',
    'cirugía cardiaca',
    'cirugía de cabeza y cuello',
    'cirugía de mama',
    'cirugía gastrointestinal',
    'cirugía ginecológica',
    'cirugía ortopédica',
    'cirugía torácica',
    'cirugía urológica',
    'cirugía vascular periférica',
    'cistitis no complicada diagnóstico',
    'cistitis no complicada tratamiento',
    'clasificación infección intraabdominal',
    'clasificación, infección del sitio quirúrgico',
    'colecistitis signos y síntomas',
    'colecistitis tratamiento',
    'crb65',
    'criterios, neumonía adquirida en la comunidad grave',
    'cultivo de esputo, neumonía adquirida en la comunidad',
    'cultivos, infección intraabdominal',
    'curb65',
    'descolonización de Staphylococcus aureus',
    'diagnóstico absceso',
    'diagnóstico carbúnculo',
    'diagnóstico celulitis',
    'diagnóstico cistitis no complicada',
    'diagnóstico ectima',
    'diagnóstico erisipela',
    'diagnóstico fascitis necrosante',
    'diagnóstico forúnculo',
    'diagnóstico impétigo',
    'diagnóstico infección intraabdominal',
    'diagnóstico neumonía adquirida en la comunidad',
    'diagnóstico pielonefritis no complicada',
    'diagnóstico piomiositis',
    'diverticulitis signos y síntomas',
    'diverticulitis tratamiento',
    'ectima diagnóstico',
    'ectima tratamiento',
    'erisipela diagnóstico',
    'erisipela tratamiento',
    'factores de riesgo, infección del sitio quirúrgico',
    'fascitis necrosante diagnóstico',
    'fascitis necrosante tratamiento',
    'forúnculo diagnóstico',
    'forúnculo tratamiento',
    'gastrointestinal, cirugía',
    'ginecológica, cirugía',
    'gram tinción, neumonía adquirida en la comunidad',
    'hemocultivos, infección intraabdominal',
    'hemocultivos, neumonia adquirirda en la comunidad',
    'hospitalario o ambulatorio, manejo infección de piel y tejidos blandos',
    'hospitalario o ambulatorio, manejo neumonia adquirirda en la comunidad',
    'imágenes diagnosticas, infección intraabdominal',
    'impétigo diagnóstico',
    'impétigo tratamiento',
    'infección de piel y tejidos blandos',
    'infección de piel y tejidos blandos manejo ambulatorio u hospitalario',
    'infección del sitio quirúrgico clasificación',
    'infección del sitio quirúrgico factores de riesgo',
    'infección del tracto urinario',
    'infección intraabdominal',
    'infección intraabdominal clasificación',
    'infección intraabdominal cultivos',
    'infección intraabdominal evaluación clínica',
    'infección intraabdominal hemocultivos',
    'infección intraabdominal imágenes diagnosticas',
    'infección intraabdominal procalcitonina',
    'infección intraabdominal tratamiento recomendaciones generales',
    'mama, cirugía',
    'neumonía adquirida en la comunidad',
    'neumonía adquirida en la comunidad antígeno urinario',
    'neumonía adquirida en la comunidad detección del virus de la influenza',
    'neumonía adquirida en la comunidad grave criterios',
    'neumonía adquirida en la comunidad grave tratamiento',
    'neumonía adquirida en la comunidad hemocultivos',
    'neumonía adquirida en la comunidad leve tratamiento',
    'neumonía adquirida en la comunidad manejo ambulatorio u hospitalario',
    'neumonía adquirida en la comunidad moderada tratamiento',
    'neumonía adquirida en la comunidad procalcitonina',
    'neumonía adquirida en la comunidad signos y síntomas',
    'neumonía adquirida en la comunidad tinción de gram y cultivo de esputo',
    'neurocirugía',
    'ortopédica, cirugía',
    'pielonefritis no complicada diagnóstico',
    'pielonefritis no complicada tratamiento',
    'piomiositis diagnóstico',
    'piomiositis tratamiento',
    'procalcitonina, infección intraabdominal',
    'procalcitonina, neumonia adquirirda en la comunidad',
    'profilaxis quirúrgica',
    'profilaxis quirúrgica intraoperatoria',
    'profilaxis quirúrgica posoperatoria',
    'profilaxis quirúrgica preoperatoria',
    'psi',
    'signos y síntomas apendicitis',
    'signos y síntomas colecistitis',
    'signos y síntomas diverticulitis',
    'signos y síntomas neumonia adquirirda en la comunidad',
    'staphylococcus aureus, descolonización',
    'tinción de gram, neumonía adquirida en la comunidad',
    'torácica, cirugía',
    'tratamiento apendicitis',
    'tratamiento absceso',
    'tratamiento carbúnculo',
    'tratamiento celulitis',
    'tratamiento cistitis no complicada',
    'tratamiento colecistitis',
    'tratamiento diverticulitis',
    'tratamiento ectima',
    'tratamiento erisipela',
    'tratamiento fascitis necrosante',
    'tratamiento forúnculo',
    'tratamiento impétigo',
    'tratamiento infección intraabdominal recomendaciones generales',
    'tratamiento neumonía adquirida en la comunidad grave',
    'tratamiento neumonía adquirida en la comunidad leve',
    'tratamiento neumonía adquirida en la comunidad moderada',
    'tratamiento pielonefritis no complicada',
    'tratamiento piomiositis',
    'urológica, cirugía',
    'vascular periferica, cirugía',
    'virus de la influenza, detección neumonía adquirida en la comunidad',

    //**** Enfermedad tromboembólica venosa ****
    'Prehospitalaria, tromboprevención','prehospitalaria, tromboprevención',
    'Incidencia','incidencia',
    'Intrahospitalaria, tromboprevención','intrahospitalaria, tromboprevención',
    'Alta hospitalaria, tromboprevención','alta hospitalaria, tromboprevención','Tromboprevención','tromboprevención',
    'Consideraciones generales tromboprevención','consideraciones generales tromboprevención',
    'Enfermedad tromboembólica','enfermedad tromboembólica',

    'Tipo de procedimientos quirúrgicos','tipo de procedimientos quirúrgicos',
    'Especialidades quirúrgicas','especialidades quirúrgicas','Tromboprofilaxis','tromboprofilaxis',

    'Cirugía abdominopélvica','cirugía abdominopélvica', 'Cirugía ginecológica tromboprevención','cirugía ginecológica tromboprevención', 'Cirugía intraabdominal','cirugía intraabdominal'
    , 'Riesgo de evento tromboembólico en cirugía','riesgo de evento tromboembólico en cirugía','Anticoagulación en cirugía abdominopélvica','anticoagulación en cirugía abdominopélvica','Abdominopélvica, cirugía','abdominopélvica, cirugía',

    'Calculadora Caprini','calculadora Caprini','Calculadora riesgo tromboembólico'
    ,'calculadora riesgo tromboembólico','Riesgo de enfermedad tromboembólica','riesgo de enfermedad tromboembólica',

    'Riesgo de sangrado posoperatorio','riesgo de sangrado posoperatorio'
    ,'Riesgo de hemorragia posterior procedimiento','riesgo de hemorragia posterior procedimiento',

    'Contraindicaciones de compresión mecánica','contraindicaciones de compresión mecánica','Cuando no usar medidas mecánicas','cuando no usar medidas mecánicas',

    'Obesidad, tromboprevención','obesidad, tromboprevención','Cirugía en sobrepeso','cirugía en sobrepeso','Cirugía bariática','cirugía bariática',

    'Cirugía genitourinaria','cirugía genitourinaria', 'Cirugía piso pélvico','cirugía piso pélvico', 'Prostatectomía','prostatectomía', 'Resección transuretral','resección transuretral', 'Vasectomía','vasectomía', 'Nefrectomía','nefrectomía',

    'Cirugía plástica estética','cirugía plástica estética','Lifectomía','lifectomía','Abdominoplastia','abdominoplastia','Mamoplastia','mamoplastia','Cirugía reconstructiva','cirugía reconstructiva',

    'Cirugía cabeza y cuello','cirugía cabeza y cuello','Otorrinolaringología','otorrinolaringología','Otología','otología','Tiroidectomía','tiroidectomía','Tonsilectomía','tonsilectomía','Otología','otología',

    'Valvuloplastia','valvuloplastia', 'Cirugía revascularización','cirugía revascularización', 'Cirugía vacular','cirugía vacular',

    'Cirugía de grandes vasos','Cirugía de grandes vasos','Angiología','Angiología','Safectomía','Safectomía',

    'Pleurodesis','pleurodesis','Toractomía','toractomía','Cirugía de tórax','cirugía de tórax','Toracoscopia','toracoscopia',

    'Cirugía neurológica','cirugía neurológica','Cirugía de sistema nervioso central','cirugía de sistema nervioso central','Recomendaciones neurocirugía','recomendaciones neurocirugía','Cirugía cerebral','cirugía cerebral','Cirugía médula espinal','cirugía médula espinal',

    'Artroscopia','artroscopia','Artroplastica','artroplastica','Reemplazo de cadera','reemplazo de cadera','Reemplazo de rodilla','reemplazo de rodilla',

    'Anticoagulación en trauma','anticoagulación en trauma','Cirugía traumatológica','cirugía traumatológica','Trauma','trauma',



    'Infección del tracto urinario no complicada','infección del tracto urinario no complicada',

    'Infección del tracto urinario complicada','infección del tracto urinario complicada',

    'Diagnóstico cistitis complicada','diagnóstico cistitis complicada','Cistitis complicada diagnostico','cistitis complicada diagnostico',

    'Diagnostico pielonefritis complicada','diagnostico pielonefritis complicada','Pielonefritis complicada diagnostico','pielonefritis complicada diagnostico',

    'Tratamiento cistitis complicada','tratamiento cistitis complicada','Cistitis complicada tratamiento','cistitis complicada tratamiento',

    'Tratamiento pielonefritis complicada','tratamiento pielonefritis complicada','Pielonefritis complicada tratamiento','pielonefritis complicada tratamiento',

    'Dolor leve','dolor leve',
    'Dolor moderado','dolor moderado',
    'Dolor no controlado','dolor no controlado','Equipo multidisciplinario','equipo multidisciplinario',
    'Dolor severo','dolor severo',
    'Analgesia multimodal','analgesia multimodal',
    'Dolor posoperatorio','dolor posoperatorio',
    'Sin dolor','sin dolor',



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
    if(query=='Neumonía adquirida en la comunidad'
        || query=='neumonía adquirida en la comunidad'
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
              title: Text('Neumonía adquirida en la comunidad'),
              leading: Image.asset('assets/m1.png')
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(  query=='Diagnóstico neumonía adquirida en la comunidad'
        || query=='diagnóstico neumonía adquirida en la comunidad'
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
                title: Text('Diagnóstico Neumonía adquirida en la comunidad'),
                leading: Image.asset('assets/m1.png')
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumonía adquirida en la comunidad signos y síntomas'
        || query=='neumonía adquirida en la comunidad signos y síntomas'
        || query=='Signos y síntomas neumonia adquirirda en la comunidad'
        || query=='signos y síntomas neumonia adquirirda en la comunidad'
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
              title: Text('Signos y síntomas, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='Neumonía adquirida en la comunidad grave criterios'
        || query=='neumonía adquirida en la comunidad grave criterios'
        || query=='Criterios, neumonía adquirida en la comunidad grave'
        || query=='criterios, neumonía adquirida en la comunidad grave'
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
    if(query=='Neumonía adquirida en la comunidad tinción de gram y cultivo de esputo'
        || query=='neumonía adquirida en la comunidad tinción de gram y cultivo de esputo'
        || query=='Tinción de gram, neumonía adquirida en la comunidad'
        || query=='tinción de gram, neumonía adquirida en la comunidad'
        || query=='Gram tinción, neumonía adquirida en la comunidad'
        || query=='gram tinción, neumonía adquirida en la comunidad'
        || query=='Cultivo de esputo, neumonía adquirida en la comunidad'
        || query=='cultivo de esputo, neumonía adquirida en la comunidad'
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
              title: Text('Tinción de Gram y cultivo de esputo, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(query=='Neumonía adquirida en la comunidad hemocultivos'
        || query=='neumonía adquirida en la comunidad hemocultivos'
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
    if(query=='Neumonía adquirida en la comunidad antígeno urinario'
        || query=='neumonía adquirida en la comunidad antígeno urinario'
        || query=='Antígeno urinario, neumonia adquirirda en la comunidad'
        || query=='antígeno urinario, neumonia adquirirda en la comunidad'
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
              title: Text('Antígeno urinario NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumonía adquirida en la comunidad detección del virus de la influenza'
        || query=='neumonía adquirida en la comunidad detección del virus de la influenza'
        || query=='Virus de la influenza, detección neumonía adquirida en la comunidad'
        || query=='virus de la influenza, detección neumonía adquirida en la comunidad'
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
              title: Text('Detección del virus de la influenza, NAC'),
              leading: Image.asset('assets/m1.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(query=='Neumonía adquirida en la comunidad manejo ambulatorio u hospitalario'
        || query=='neumonía adquirida en la comunidad manejo ambulatorio u hospitalario'
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

    if(query=='Neumonía adquirida en la comunidad procalcitonina'
        || query=='neumonía adquirida en la comunidad procalcitonina'
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

    if(query=='Neumonía adquirida en la comunidad leve tratamiento'
        || query=='neumonía adquirida en la comunidad leve tratamiento'
        || query=='Tratamiento neumonía adquirida en la comunidad leve'
        || query=='tratamiento neumonía adquirida en la comunidad leve'
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

    if(query=='Neumonía adquirida en la comunidad moderada tratamiento'
        || query=='neumonía adquirida en la comunidad moderada tratamiento'
        || query=='Tratamiento neumonía adquirida en la comunidad moderada'
        || query=='tratamiento neumonía adquirida en la comunidad moderada'
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

    if(query=='Neumonía adquirida en la comunidad grave tratamiento'
        || query=='neumonía adquirida en la comunidad grave tratamiento'
        || query=='Tratamiento neumonía adquirida en la comunidad grave'
        || query=='tratamiento neumonía adquirida en la comunidad grave'
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

    //  ********* Infección del tracto Urinario   ********

    if(query=='Infección del tracto urinario'
        || query=='infección del tracto urinario'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new InfeccionTractoUrinario()));
              },
              title: Text('Infección del tracto urinario'),
              leading: Image.asset('assets/m2.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Diagnóstico cistitis no complicada'
        || query=='diagnóstico cistitis no complicada'
        || query=='Cistitis no complicada diagnóstico'
        || query=='cistitis no complicada diagnóstico'
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
              title: Text('Diagnóstico cistitis no complicada'),
              leading: Image.asset('assets/NoComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
           query=='Diagnóstico pielonefritis no complicada'
        || query=='diagnóstico pielonefritis no complicada'
        || query=='Pielonefritis no complicada diagnóstico'
        || query=='pielonefritis no complicada diagnóstico'
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
              title: Text('Diagnóstico pielonefritis no complicada'),
              leading: Image.asset('assets/NoComplicadaM.png'),
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
              leading: Image.asset('assets/NoComplicadaM.png'),
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
              leading: Image.asset('assets/NoComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  ************* Infección Intraabdominal  ****************

    if(    query=='Infección intraabdominal'
        || query=='infección intraabdominal'
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
              title: Text('Infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
        query=='Diagnóstico infección intraabdominal'
        || query=='diagnóstico infección intraabdominal'
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
              title: Text('Diagnóstico Infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal clasificación'
        || query=='infección intraabdominal clasificación'
        || query=='Clasificación infección intraabdominal'
        || query=='clasificación infección intraabdominal'
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
              title: Text('Clasificación Infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal evaluación clínica'
        || query=='infección intraabdominal evaluación clínica'
        || query=='Apendicitis signos y síntomas'
        || query=='apendicitis signos y síntomas'
        || query=='Signos y síntomas apendicitis'
        || query=='signos y síntomas apendicitis'
        || query=='Colecistitis signos y síntomas'
        || query=='colecistitis signos y síntomas'
        || query=='Signos y síntomas colecistitis'
        || query=='signos y síntomas colecistitis'
        || query=='Diverticulitis signos y síntomas'
        || query=='diverticulitis signos y síntomas'
        || query=='Signos y síntomas diverticulitis'
        || query=='signos y síntomas diverticulitis'
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
              title: Text('Evaluación clínica infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal hemocultivos'
        || query=='infección intraabdominal hemocultivos'
        || query=='Hemocultivos, infección intraabdominal'
        || query=='hemocultivos, infección intraabdominal'
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
              title: Text('Hemocultivos, infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal cultivos'
        || query=='infección intraabdominal cultivos'
        || query=='Cultivos, infección intraabdominal'
        || query=='cultivos, infección intraabdominal'
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
              title: Text('Cultivos, infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal procalcitonina'
        || query=='infección intraabdominal procalcitonina'
        || query=='Procalcitonina, infección intraabdominal'
        || query=='procalcitonina, infección intraabdominal'
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
              title: Text('Procalcitonina, infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal imágenes diagnosticas'
        || query=='infección intraabdominal imágenes diagnosticas'
        || query=='Imágenes diagnosticas, infección intraabdominal'
        || query=='imágenes diagnosticas, infección intraabdominal'
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
              title: Text('Imágenes diagnosticas, infección intraabdominal'),
              leading: Image.asset('assets/m3.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Infección intraabdominal tratamiento recomendaciones generales'
        || query=='infección intraabdominal tratamiento recomendaciones generales'
        || query=='Tratamiento infección intraabdominal recomendaciones generales'
        || query=='tratamiento infección intraabdominal recomendaciones generales'
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
              title: Text('Tratamiento recomendaciones generales infección intraabdominal'),
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

    //  ******************* Infección de Piel y Tejidos blandos   *******************

    if(    query=='Infección de piel y tejidos blandos'
        || query=='infección de piel y tejidos blandos'
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
              title: Text('Infección de piel y tejidos blandos'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Impétigo diagnóstico'
        || query=='impétigo diagnóstico'
        || query=='Diagnóstico impétigo'
        || query=='diagnóstico impétigo'
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
              title: Text('Diagnóstico Impétigo'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
           query=='Impétigo tratamiento'
        || query=='impétigo tratamiento'
        || query=='Tratamiento impétigo'
        || query=='tratamiento impétigo'
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
              title: Text('Tratamiento Impétigo'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(
           query=='Ectima diagnóstico'
        || query=='ectima diagnóstico'
        || query=='Diagnóstico ectima'
        || query=='diagnóstico ectima'
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
              title: Text('Diagnóstico Ectima '),
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


    if(    query=='Erisipela diagnóstico'
        || query=='erisipela diagnóstico'
        || query=='Diagnóstico erisipela'
        || query=='diagnóstico erisipela'
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
              title: Text('Diagnóstico Erisipela '),
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
        query=='Celulitis diagnóstico'
        || query=='celulitis diagnóstico'
        || query=='Diagnóstico celulitis'
        || query=='diagnóstico celulitis'
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
              title: Text('Diagnóstico Celulitis '),
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

    if(    query=='Fascitis necrosante diagnóstico'
        || query=='fascitis necrosante diagnóstico'
        || query=='Diagnóstico fascitis necrosante'
        || query=='diagnóstico fascitis necrosante'
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
              title: Text('Diagnóstico Fascitis necrosante '),
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

    if(    query=='Absceso diagnóstico'
        || query=='absceso diagnóstico'
        || query=='Diagnóstico absceso'
        || query=='diagnóstico absceso'
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
              title: Text('Diagnóstico Absceso '),
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
    if( query=='Carbúnculo diagnóstico'
        || query=='carbúnculo diagnóstico'
        || query=='Diagnóstico carbúnculo'
        || query=='diagnóstico carbúnculo'
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
              title: Text('Diagnóstico Carbúnculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Carbúnculo tratamiento'
        || query=='carbúnculo tratamiento'
        || query=='Tratamiento carbúnculo'
        || query=='tratamiento carbúnculo'
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
              title: Text('Tratamiento Carbúnculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Forúnculo diagnóstico'
        || query=='forúnculo diagnóstico'
        || query=='Diagnóstico forúnculo'
        || query=='diagnóstico forúnculo'
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
              title: Text('Diagnóstico Forúnculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if( query=='Forúnculo tratamiento'
        || query=='forúnculo tratamiento'
        || query=='Tratamiento forúnculo'
        || query=='tratamiento forúnculo'
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
              title: Text('Tratamiento Forúnculo '),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query=='Piomiositis diagnóstico'
        || query=='piomiositis diagnóstico'
        || query=='Diagnóstico piomiositis'
        || query=='diagnóstico piomiositis'
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
              title: Text('Diagnóstico Piomiositis '),
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

    if(    query=='Infección de piel y tejidos blandos manejo ambulatorio u hospitalario'
        || query=='infección de piel y tejidos blandos manejo ambulatorio u hospitalario'
        || query=='Ambulatorio u hospitalario, manejo infección de piel y tejidos blandos'
        || query=='ambulatorio u hospitalario, manejo infección de piel y tejidos blandos'
        || query=='Hospitalario o ambulatorio, manejo infección de piel y tejidos blandos'
        || query=='hospitalario o ambulatorio, manejo infección de piel y tejidos blandos'
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
              title: Text('Manejo ambulatorio u hospitalario, infección de Piel y Tejidos blandos'),
              leading: Image.asset('assets/m4.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  **************  Profilaxis Quirúrgica ******************

    if(    query=='Profilaxis quirúrgica'
        || query=='profilaxis quirúrgica'
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
              title: Text('Profilaxis quirúrgica'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Infección del sitio quirúrgico clasificación'
        || query=='infección del sitio quirúrgico clasificación'
        || query=='Clasificación, infección del sitio quirúrgico'
        || query=='clasificación, infección del sitio quirúrgico'
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
              title: Text('Clasificación de la Infección del Sitio Quirúrgico (ISQ)'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Infección del sitio quirúrgico factores de riesgo'
        || query=='infección del sitio quirúrgico factores de riesgo'
        || query=='Factores de riesgo, infección del sitio quirúrgico'
        || query=='factores de riesgo, infección del sitio quirúrgico'
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
              title: Text('Factores de riesgo para Infección del Sitio Quirúrgico (ISQ)'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Profilaxis quirúrgica preoperatoria'
        || query=='profilaxis quirúrgica preoperatoria'
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
              title: Text('Profilaxis quirúrgica antimicrobiana Preoperatoria'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Profilaxis quirúrgica intraoperatoria'
        || query=='profilaxis quirúrgica intraoperatoria'
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
              title: Text('Profilaxis quirúrgica antimicrobiana Intraoperatoria'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Profilaxis quirúrgica posoperatoria'
        || query=='profilaxis quirúrgica posoperatoria'
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
              title: Text('Profilaxis quirúrgica antimicrobiana Posoperatoria'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Descolonización de Staphylococcus aureus'
        || query=='descolonización de Staphylococcus aureus'
        || query=='Staphylococcus aureus, descolonización'
        || query=='staphylococcus aureus, descolonización'
        || query=='aureus Staphylococcus, descolonización'
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
              title: Text('Descolonización Staphylococcus aureus'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía de cabeza y cuello'
        || query=='cirugía de cabeza y cuello'
        || query=='Cabeza y cuello, cirugía'
        || query=='cabeza y cuello, cirugía'
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
              title: Text('Cirugía de cabeza y cuello'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Neurocirugía'
        || query=='neurocirugía'
        || query == 'Cirugía neurológica'
        || query == 'cirugía neurológica'
        || query == 'Cirugía de sistema nervioso central'
        || query == 'cirugía de sistema nervioso central'
        || query == 'Recomendaciones neurocirugía'
        || query == 'recomendaciones neurocirugía'
        || query == 'Cirugía cerebral'
        || query == 'cirugía cerebral'
        || query == 'Cirugía médula espinal'
        || query == 'cirugía médula espinal'
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
              title: Text('Neurocirugía'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) =>  ETNeurologica()));
              },
              title: Text('Cirugía neurológica, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía cardiaca'
        || query=='cirugía cardiaca'
        || query=='Cardiaca, cirugía'
        || query=='cardiaca, cirugía'
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
              title: Text('Cirugía Cardiaca'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) =>  ETCardiovascular()));
              },
              title: Text('Cirugía cardiovascular, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía vascular periférica'
        || query=='cirugía vascular periférica'
        || query=='Vascular periferica, cirugía'
        || query=='vascular periferica, cirugía'
        || query=='Cirugía de grandes vasos'
        || query=='cirugía de grandes vasos'
        || query=='Angiología'
        || query=='Angiología'
        || query=='Safectomía'
        || query=='Safectomía'
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
              title: Text('Cirugía vascular periférica'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) =>  ETCardiovascular()));
              },
              title: Text('Cirugía vascular periférica, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía torácica'
        || query=='cirugía torácica'
        || query=='Torácica, cirugía'
        || query=='torácica, cirugía'
        || query == 'Pleurodesis'
        || query == 'pleurodesis'
        || query == 'Toractomía'
        || query == 'toractomía'
        || query == 'Cirugía de tórax'
        || query == 'cirugía de tórax'
        || query == 'Toracoscopia'
        || query == 'toracoscopia'
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
              title: Text('Cirugía Torácica'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETToracica()));
              },
              title: Text('Cirugía Torácica, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía gastrointestinal'
        || query=='cirugía gastrointestinal'
        || query=='Gastrointestinal, cirugía'
        || query=='gastrointestinal, cirugía'
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
              title: Text('Cirugía Gastrointestinal'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía ortopédica'
        || query=='cirugía ortopédica'
        || query=='Ortopédica, cirugía'
        || query=='ortopédica, cirugía'
        || query == 'Artroscopia'
        || query == 'artroscopia'
        || query == 'Artroplastica'
        || query == 'artroplastica'
        || query == 'Reemplazo de cadera'
        || query == 'reemplazo de cadera'
        || query == 'Reemplazo de rodilla'
        || query == 'reemplazo de rodilla'
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
              title: Text('Cirugía Ortopédica'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETOrtopedia()));
              },
              title: Text('Ortopedia, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía urológica'
        || query=='cirugía urológica'
        || query=='Urológica, cirugía'
        || query=='urológica, cirugía'
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
              title: Text('Cirugía Urológica'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETUrologico()));
              },
              title: Text('Cirugía Urológica tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía ginecológica'
        || query=='cirugía ginecológica'
        || query=='Ginecológica, cirugía'
        || query=='ginecológica, cirugía'
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
              title: Text('Cirugía Ginecológica'),
              leading: Image.asset('assets/m5.png'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETAbdominopelvico()));
              },
              title: Text('Cirugía abdominopélvica / ginecológica'),
              leading: Image.asset('assets/m7.png'),
            ),
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query=='Cirugía de mama'
        || query=='cirugía de mama'
        || query=='Mama, cirugía'
        || query=='mama, cirugía'
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
              title: Text('Cirugía de mama'),
              leading: Image.asset('assets/m5.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  ************* Enfermedad tromboembólica venosa  ****************

    if(    query== 'Prehospitalaria, tromboprevención'
        || query =='prehospitalaria, tromboprevención'
        || query == 'Incidencia'
        || query =='incidencia'
        || query == 'Intrahospitalaria, tromboprevención'
        || query =='intrahospitalaria, tromboprevención'
        || query == 'Alta hospitalaria, tromboprevención'
        || query =='alta hospitalaria, tromboprevención'
        || query == 'Consideraciones generales tromboprevención'
        || query =='consideraciones generales tromboprevención'
        || query == 'Enfermedad tromboembólica'
        || query =='enfermedad tromboembólica'
        || query == 'Tromboprevención'
        || query == 'tromboprevención'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new EnfermedadTromboembolicaVenosa()));
              },
              title: Text('Enfermedad tromboembólica venosa'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query== 'Tipo de procedimientos quirúrgicos'
        || query == 'tipo de procedimientos quirúrgicos'
        || query == 'Especialidades quirúrgicas'
        || query == 'especialidades quirúrgicas'
        || query == 'Tromboprofilaxis'
        || query == 'tromboprofilaxis'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Tromboprofilaxis()));
              },
              title: Text('Tromboprofilaxis, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query== 'Cirugía abdominopélvica'
        || query == 'cirugía abdominopélvica'
        || query ==  'Cirugía ginecológica tromboprevención'
        || query == 'cirugía ginecológica tromboprevención'
        || query ==  'Cirugía intraabdominal'
        || query == 'cirugía intraabdominal'
        || query ==  'Riesgo de evento tromboembólico en cirugía'
        || query == 'riesgo de evento tromboembólico en cirugía'
        || query == 'Anticoagulación en cirugía abdominopélvica'
        || query == 'anticoagulación en cirugía abdominopélvica'
        || query == 'Abdominopélvica, cirugía'
        || query == 'abdominopélvica, cirugía'
    ){
      return new Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETAbdominopelvico()));
              },
              title: Text('Cirugía abdominopélvica / ginecológica, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query== 'Calculadora Caprini'
        || query == 'calculadora Caprini'
        || query == 'Calculadora riesgo tromboembólico'
        || query == 'calculadora riesgo tromboembólico'
        || query == 'Riesgo de enfermedad tromboembólica'
        || query == 'riesgo de enfermedad tromboembólica'
    ){
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/MainMenu": (BuildContext context) => MainMenu(),
          },
      home: Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new CalculadoraCaprini(atrasRoute: '/MainMenu',)));
              },
              title: Text('Calculadora Caprini, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      )
      );
    }
    if(    query== 'Riesgo de sangrado posoperatorio'
        || query == 'riesgo de sangrado posoperatorio'
        || query == 'Riesgo de hemorragia posterior procedimiento'
        || query == 'riesgo de hemorragia posterior procedimiento'
    ){
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/MainMenu": (BuildContext context) => MainMenu(),
          },
      home: Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new FactoresRiesgoSangrado(atrasRoute: '/MainMenu',)));
              },
              title: Text('Factores de riesgo de sangrado, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      )
      );
    }
    if(    query== 'Contraindicaciones de compresión mecánica'
        || query == 'contraindicaciones de compresión mecánica'
        || query == 'Cuando no usar medidas mecánicas'
        || query == 'cuando no usar medidas mecánicas'
    ){
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/MainMenu": (BuildContext context) => MainMenu(),
          },
          home: Scaffold(
            body:Column(
              children: [
                Container(height:30),
                ListTile(
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new ContraindicacionesMecanica(atrasRoute: '/MainMenu',)));
                  },
                  title: Text('Contraindicaciones medidas mecánicas, tromboprevención'),
                  leading: Image.asset('assets/m7.png'),
                )
              ],
            ),
            bottomNavigationBar: BarraInferior(),
          )
      );
    }

    if(    query== 'Obesidad, tromboprevención'
        || query == 'obesidad, tromboprevención'
        || query == 'Cirugía en sobrepeso'
        || query == 'cirugía en sobrepeso'
        || query == 'Cirugía bariática'
        || query == 'cirugía bariática'
    ){
      return Scaffold(
            body:Column(
              children: [
                Container(height:30),
                ListTile(
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new ETObesidad()));
                  },
                  title: Text('Obesidad, tromboprevención'),
                  leading: Image.asset('assets/m7.png'),
                )
              ],
            ),
            bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query == 'Cirugía genitourinaria'
        || query == 'cirugía genitourinaria'
        || query == 'Cirugía piso pélvico'
        || query == 'cirugía piso pélvico'
        || query == 'Prostatectomía'
        || query == 'prostatectomía'
        || query == 'Resección transuretral'
        || query == 'resección transuretral'
        || query == 'Vasectomía'
        || query == 'vasectomía'
        || query == 'Nefrectomía'
        || query == 'nefrectomía'
    ){
      return Scaffold(
            body:Column(
              children: [
                Container(height:30),
                ListTile(
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new ETUrologico()));
                  },
                  title: Text('Procedimientos urológicos, tromboprevención'),
                  leading: Image.asset('assets/m7.png'),
                )
              ],
            ),
            bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Cirugía plástica estética'
        || query == 'cirugía plástica estética'
        || query == 'Lifectomía'
        || query == 'lifectomía'
        || query == 'Abdominoplastia'
        || query == 'abdominoplastia'
        || query == 'Mamoplastia'
        || query == 'mamoplastia'
        || query == 'Cirugía reconstructiva'
        || query == 'cirugía reconstructiva'
    ){
      return Scaffold(
            body:Column(
              children: [
                Container(height:30),
                ListTile(
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) => new ETCirugiaPlastica()));
                  },
                  title: Text('Cirugía plástica, tromboprevención'),
                  leading: Image.asset('assets/m7.png'),
                )
              ],
            ),
            bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Cirugía cabeza y cuello'
        || query == 'cirugía cabeza y cuello'
        || query == 'Otorrinolaringología'
        || query == 'otorrinolaringología'
        || query == 'Otología'
        || query == 'otología'
        || query == 'Tiroidectomía'
        || query == 'tiroidectomía'
        || query == 'Tonsilectomía'
        || query == 'tonsilectomía'
        || query == 'Otología'
        || query == 'otología'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETCirugiaPlastica()));
              },
              title: Text('Otorrinolaringología, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Valvuloplastia'
        || query == 'valvuloplastia'
        || query == 'Cirugía revascularización'
        || query == 'cirugía revascularización'
        || query == 'Cirugía vacular'
        || query == 'cirugía vacular'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETCardiovascular()));
              },
              title: Text('Cirugía cardiovascular, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Anticoagulación en trauma'
        || query == 'anticoagulación en trauma'
        || query == 'Cirugía traumatológica'
        || query == 'cirugía traumatológica'
        || query == 'Trauma'
        || query == 'trauma'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ETTraumatologia()));
              },
              title: Text('Traumatología, tromboprevención'),
              leading: Image.asset('assets/m7.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //    *******   ITU Complicada    *********

    if(    query== 'Infección del tracto urinario no complicada'
        || query == 'infección del tracto urinario no complicada'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new InfeccionTractoUrinarioNocomplicadaMenu()));
              },
              title: Text('Infección del tracto urinario no complicada'),
              leading: Image.asset('assets/NoComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Infección del tracto urinario complicada'
        || query == 'infección del tracto urinario complicada'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new InfeccionTractoUrinarioComplicadaMenu()));
              },
              title: Text('Infección del tracto urinario complicada'),
              leading: Image.asset('assets/NoComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Diagnóstico cistitis complicada'
    || query == 'diagnóstico cistitis complicada'
    || query == 'Cistitis complicada diagnostico'
    || query == 'cistitis complicada diagnostico'
        || query == 'Diagnostico pielonefritis complicada'
        || query == 'diagnostico pielonefritis complicada'
        || query == 'Pielonefritis complicada diagnostico'
        || query == 'pielonefritis complicada diagnostico'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DiagnosticoITUComplicada()));
              },
              title: Text('Diagnóstico Infección Tracto Urinario (ITU) complicada'),
              leading: Image.asset('assets/ComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Tratamiento cistitis complicada'
        || query == 'tratamiento cistitis complicada'
        || query == 'Cistitis complicada tratamiento'
        || query == 'cistitis complicada tratamiento'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TratamientoCistitisComplicada()));
              },
              title: Text('Tratamiento cistitis complicada'),
              leading: Image.asset('assets/ComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Tratamiento pielonefritis complicada'
        || query == 'tratamiento pielonefritis complicada'
        || query == 'Pielonefritis complicada tratamiento'
        || query == 'pielonefritis complicada tratamiento'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TratamientoPielonefritiscomplicada()));
              },
              title: Text('Tratamiento pielonefritis complicada'),
              leading: Image.asset('assets/ComplicadaM.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    //  *******   Tratamiento de dolor  **********

    if(    query== 'Dolor leve' || query == 'dolor leve'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DolorLeve()));
              },
              title: Text('Dolor leve'),
              leading: Image.asset('assets/m6.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    if(    query== 'Dolor moderado' || query == 'dolor moderado'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DolorModerado()));
              },
              title: Text('Dolor moderado'),
              leading: Image.asset('assets/m6.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    
    if(    query== 'Dolor no controlado'
        || query == 'dolor no controlado'
        || query == 'Equipo multidisciplinario'
    || query == 'equipo multidisciplinario'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DolorNoControlado()));
              },
              title: Text('Dolor no controlado, equipo multidisciplinario'),
              leading: Image.asset('assets/m6.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }
    
    if(    query== 'Analgesia multimodal' || query == 'analgesia multimodal'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new EnfoqueSistematico()));
              },
              title: Text('Analgesia multimodal'),
              leading: Image.asset('assets/m6.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Dolor severo' || query == 'dolor severo'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new DolorSevero()));
              },
              title: Text('Dolor severo'),
              leading: Image.asset('assets/m6.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Dolor posoperatorio' || query == 'dolor posoperatorio'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ManejoDolorPosoperatorio()));
              },
              title: Text('Manejo del dolor posoperatorio'),
              leading: Image.asset('assets/m6.png'),
            )
          ],
        ),
        bottomNavigationBar: BarraInferior(),
      );
    }

    if(    query== 'Sin dolor' || query == 'sin dolor'
    ){
      return Scaffold(
        body:Column(
          children: [
            Container(height:30),
            ListTile(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new SinDolor()));
              },
              title: Text('Sin dolor'),
              leading: Image.asset('assets/m6.png'),
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
              title: Text('Diagnóstico Neumonía adquirida en la comunidad'),
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

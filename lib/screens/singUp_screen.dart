import 'dart:ui';


import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/logo_portada.dart';
import 'package:acin/ReusableWidgets/toLowerCase.dart';
import 'package:acin/screens/login_screen.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:acin/screens/registro_exitoso.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_launcher/url_launcher.dart';


class Registro extends StatefulWidget {
  const Registro({Key key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {

  Color colorClaro = new Color(0xffCBD49D);
  Color colorMedio = new Color(0xff9BB350);
  Color colorOscuro = new Color(0xff87A44D);

  String _email = "";
  String _password = "";
  String _confirmPassword = "";
  String _fecha = "";
  String _especialidad = " ";
  String _errorStatus;
  String _errorStatus2;
  String _errorStatus3;
  bool aceptoTerminos = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  static const _urlPoliticas = 'https://unal.edu.co/tratamiento-de-datos-personales.html';
  DateTime _dateTime = DateTime.utc(2010);



  @override
  Widget build(BuildContext context) {
    void initState() {
      // TODO: implement initState
      Firebase.initializeApp();
      super.initState();
    }
    return MaterialApp(
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {
              return new Scaffold(
                  appBar: BarraSuperior().BarraSola(context, false),
                  bottomNavigationBar: BarraInferior(),
                  backgroundColor: colorMedio,
                  resizeToAvoidBottomInset: false,
                  body: SafeArea(
                    child: cuerpo(context),
                  )
              );
            }
        )
    );
  }

  Widget cuerpo(context){
    return new ListView(
      children: [
        _formulario(context),
      ],
    );
  }

  Widget _formulario(context){
    return new Form(
        key: _formkey,
        child: Container(
      child: Column(
        children: [
          Container(height:MediaQuery.of(context).size.height*0.075,),
          Container(
            margin: margenNormal(context),
            width: MediaQuery.of(context).size.width * 0.8,
            child: RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Ocupación',
                      style: _estiloLetra1(context),
                    )
                  ]
              ),
            ),
          ),
          ocupacionesWidget(context),
          Container(height:MediaQuery.of(context).size.height*0.005,),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: _errorStatus3,
                      style: _estiloLetra1Error(context),
                    )
                  ]
              ),
            ),
          ),
          otraEspecialidad(context),
          Container(height:MediaQuery.of(context).size.height*0.025,),
          Container(
            margin: margenNormal(context),
            width: MediaQuery.of(context).size.width * 0.8,
            child: RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Fecha de nacimiento',
                      style: _estiloLetra1(context),
                    )
                  ]
              ),
            ),
          ),
          buildDatePicker(),
          Container(height:MediaQuery.of(context).size.height*0.025,),
          Container(
            margin: margenNormal(context),
            width: MediaQuery.of(context).size.width * 0.8,
            child: RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'E-mail',
                      style: _estiloLetra1(context),
                    )
                  ]
              ),
            ),
          ),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                emailField(context),
                Container(height:MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Contraseña',
                            style: _estiloLetra1(context),
                          )
                        ]
                    ),
                  ),
                ),
                passwordField(context),
                Container(height:MediaQuery.of(context).size.height*0.025,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Repita contraseña',
                            style: _estiloLetra1(context),
                          )
                        ]
                    ),
                  ),
                ),
                passwordFieldConfirmation(context),
                Container(height:MediaQuery.of(context).size.height*0.015,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: _errorStatus2,
                            style: _estiloLetra1Error(context),
                          )
                        ]
                    ),
                  ),
                ),
                Container(height:MediaQuery.of(context).size.height*0.015,),
              ],
            ),
          ),
          aceptaTerminos(context),
          Container(
            margin: margenNormal(context),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: _errorStatus,
                            style: _estiloLetra1Error(context),
                          )
                        ]
                    ),
                  ),
                ),
                Container(height:MediaQuery.of(context).size.height*0.015,),
                submitButton(context),
                Container(height:MediaQuery.of(context).size.height*0.025,),
                Container(height:MediaQuery.of(context).size.height*0.025,),
                Container(
                  child: InkWell(
                    child: Text('V 1.0.0\nPolíticas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Ancizar",
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.05

                      ),
                    ),
                    onTap: (){_launchURL();},
                  ),),
              ],
            ),
          ),

        ],
      ),
    )
    );
  }

  void _launchURL() async => await canLaunch(_urlPoliticas) ? await launch(_urlPoliticas) : throw 'Could not launch $_urlPoliticas';

  Widget ocupacionesWidget(context){
    return new Container(
      height: MediaQuery.of(context).size.width*0.17,
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
        color: colorClaro,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          isDense: true,
          focusColor:colorOscuro,
          dropdownColor: colorClaro,
          value: _especialidad,
          elevation: 5,
          style: TextStyle(
            fontFamily: "Ancizar",
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: colorOscuro,
          ),
          iconEnabledColor:Colors.white,
          items: <String>[
            ' ',
            'Estudiante de enfermería',
            'Estudiante de química farmacéutica',
            'Estudiante de último año de medicina',
            'Estudiante de medicina',
            'Estudiante de especialidad médica: clínica',
            'Estudiante de especialidad médica: quirúrgica',
            'Auxiliar de enfermería',
            'Profesional en enfermería',
            'Profesional en química farmacéutica',
            'Profesional en medicina',
            'Especialista en especialidad médica: clínica',
            'Especialista en especialidad médica: quirúrgica',
            'Otra',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                width: double.infinity,
                decoration:BoxDecoration(
                    border:Border(bottom:BorderSide(color:colorMedio,width:1))
                ),
                child: Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.05, right:MediaQuery.of(context).size.width*0.05),
                  child: Text(value,style:TextStyle(color:colorOscuro),),
                ),
              )
            );
          }).toList(),
          hint:Text(
            "Escoja una ocupación",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500
            ),
          ),
          onChanged: (String value) {
            setState(() {
              _especialidad = value;
            });
          },
        ),
      )
    );
  }

  Widget emailField(contex){
    return TextFormField(
      inputFormatters: [UpperCaseTextFormatter(),],
      style: new TextStyle(
        fontFamily: "Ancizar",
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: colorOscuro,
      ),
      validator: (input){
        if(!input.contains('@')){
          return 'Escriba un e-mail válido';
        }
      },
      onSaved: (input)=>_email=input,
      //onChanged: bloc.changeEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        //errorStyle: _estiloLetra1Error(context),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: colorClaro)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: colorClaro)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(Icons.mark_email_read, color: colorOscuro,),
        hintText: 'you@example.com',
        hintStyle: TextStyle(
          fontFamily: "Ancizar",
          fontSize: MediaQuery.of(context).size.width * 0.06,
          color: colorOscuro,
        ),
        focusColor: colorOscuro,
        filled: true,
        fillColor: colorClaro,
        //errorText: snapshot.error,
      ),

    );
  }

  Widget passwordField(context){
    return TextFormField(
      style: new TextStyle(
        fontFamily: "Ancizar",
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: colorOscuro,
      ),
      obscureText: true,
      validator: (input){
        if(input.length<8){
          return 'Contraseña debe tener mínimo 8 caracteres';
        }
      },
      onSaved: (input)=>_password=input,
      //onChanged: bloc.changeEmail,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        //errorStyle: _estiloLetra1Error(context),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: colorClaro)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: colorClaro)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(Icons.lock_outline, color: colorOscuro,),
        hintText: 'Password',
        hintStyle: TextStyle(
          fontFamily: "Ancizar",
          fontSize: MediaQuery.of(context).size.width * 0.06,
          color: colorOscuro,
        ),
        focusColor: colorOscuro,
        filled: true,
        fillColor: colorClaro,
        //errorText: snapshot.error,
      ),
    );
  }
  Widget passwordFieldConfirmation(context){
    return TextFormField(
      style: new TextStyle(
        fontFamily: "Ancizar",
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: colorOscuro,
      ),
      obscureText: true,
      validator: (input){
        if(input.length<8){
          return 'Contraseña debe tener mínimo 8 caracteres';
        }
      },
      onSaved: (input)=>_confirmPassword=input,
      //onChanged: bloc.changeEmail,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        //errorStyle: _estiloLetra1Error(context),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: colorClaro)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: colorClaro)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(Icons.lock_outline, color: colorOscuro,),
        hintText: 'Confirm password',
        hintStyle: TextStyle(
          fontFamily: "Ancizar",
          fontSize: MediaQuery.of(context).size.width * 0.06,
          color: colorOscuro,
        ),
        focusColor: colorOscuro,
        filled: true,
        fillColor: colorClaro,
        //errorText: snapshot.error,
      ),
    );
  }


  Widget buildDatePicker() => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0)
    ),
    height: MediaQuery.of(context).size.height * 0.08,
    width: MediaQuery.of(context).size.width * 0.8,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
      //clipBehavior: Clip.hardEdge,
      child: CupertinoTheme(
        data: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: TextStyle(
              fontFamily: "Ancizar",
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: colorOscuro,
              //fontWeight: FontWeight.bold
            ),
          )
        ),
        child: CupertinoDatePicker(
            minimumYear: 1930,
            maximumYear: 2011,
            backgroundColor: colorClaro,
            initialDateTime: _dateTime,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (dateTime) => setState(() => _fecha = dateTime.toString())
        ),
      )
    )
  );

  Widget aceptaTerminos(context){
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }
    return new Container(
      width: MediaQuery.of(context).size.width * 0.93,
      child: ListTile(
        title: RichText(
          text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Acepto las políticas de privacidad',
                  style: _estiloLetra1(context),
                )
              ]
          ),
        ),
        leading: Checkbox(
          checkColor: colorOscuro,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: aceptoTerminos,
          onChanged: (bool value) {
            setState(() {
              aceptoTerminos = value;
            });
          },
        ),
      ),
    );
  }

  Widget submitButton(context){
    _errorStatus = "";
    _errorStatus2 = "";
    _errorStatus3 = "";
    return StreamBuilder(
      //stream: bloc.submitValid,
      builder: (context,snapshot){
        return ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(
                  MediaQuery.of(context).size.width * 0.8
              ),
              primary: colorClaro,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              side: BorderSide(
                color: colorClaro,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025, bottom: MediaQuery.of(context).size.height * 0.025
              ),
              child: Text(
                'Registrarse',
                style: TextStyle(
                    fontFamily: "Ancizar",
                    color: colorOscuro,
                    fontSize: MediaQuery.of(context).size.width * 0.06),
              ),
            ),
            onPressed: () {
                Acceder();
            }
        );
      },
    );
  }

    void Acceder() async {//Future<void>
      FirebaseAuth auth = FirebaseAuth.instance;
      CollectionReference users = FirebaseFirestore.instance.collection('Usuarios');
      final formState=_formkey.currentState;
      if(_password != _confirmPassword){
        setState(() {
          _errorStatus2='Las contraseñas no coinciden';
        });
      }
      if(_especialidad == " " || _especialidad == ""){
        setState(() {
          _errorStatus3='Seleccione una ocupación';
        });
      }
      if(_formkey.currentState.validate()){
        //  Login to Firebase
        _formkey.currentState.save();
        if(_password==_confirmPassword && aceptoTerminos==true && _especialidad != " " && _especialidad != ""){
          try{
            UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: _email,
                password: _password
            );
            userCredential.user.sendEmailVerification();

            if (auth.currentUser != null) {
              print(auth.currentUser.uid);

              return users.doc(auth.currentUser.uid)
                  .set({
                'Fecha': _fecha,
                'Especialidad': _especialidad,
                'Email': _email
              })
                  .then(
                      (value) {
                    addIntToSFNormal();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => RegistroExitoso()),
                          (Route<dynamic> route) => false,);
                  }
              )
                  .catchError((error) {
                setState(){
                  _errorStatus = 'Error agregando usuario: $error';
                }
              }
              );
            }
          }on FirebaseAuthException catch(e){
            if (e.code == 'weak-password') {
              _errorStatus = 'La contraseña es muy débil';
            } else if (e.code == 'email-already-in-use') {
              _errorStatus = 'El e-mail actualmente se encuentra registrado';
            }
          }
        }
      }

      if(aceptoTerminos != true){
        setState(() {
          _errorStatus='Debe aceptar las políticas';
        });
      }





    }

  addIntToSFPremium() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('estado', 123);
  }
  addIntToSFNormal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('estado', 1);
    prefs.setString('email', _email);
  }

  Widget otraEspecialidad(context){
    if(_especialidad == "Otra"){
      return new Container(
        margin: margenNormal(context),
        child: Column(
          children: [
            Container(height:MediaQuery.of(context).size.height*0.025,),
            Container(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Especifique su ocupación',
                        style: _estiloLetra1(context),
                      )
                    ]
                ),
              ),
            ),
            TextFormField(
              style: new TextStyle(
                fontFamily: "Ancizar",
                fontSize: MediaQuery.of(context).size.width * 0.06,
                color: colorOscuro,
              ),
              validator: (input){
                if(input.isEmpty){
                  return 'Este campo es obligatorio';
                }
              },
              onSaved: (input)=>_especialidad=input,
              //onChanged: bloc.changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: colorClaro)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: colorClaro)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.people_alt_outlined, color: colorOscuro,),
                hintText: 'Ocupación',
                hintStyle: TextStyle(
                  fontFamily: "Ancizar",
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  color: colorOscuro,
                ),
                focusColor: colorOscuro,
                filled: true,
                fillColor: colorClaro,
                //errorText: snapshot.error,
              ),
            )
          ],
        ),
      );
    }else{
      return Container();
    }
  }


  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.1,
        left: MediaQuery.of(context).size.width*0.1
    );
  }

  _estiloLetra1(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: Colors.white);
  }
  _estiloLetra1Error(context) {
    return new TextStyle(
        //fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.032,
        //fontWeight: FontWeight.bold,
        color: Color(0xffCF272A));
  }

}

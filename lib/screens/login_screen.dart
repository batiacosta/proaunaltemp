import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/toLowerCase.dart';
import 'package:acin/screens/RecuperarContrasena.dart';
import 'package:acin/screens/mainMenu.dart';
import 'package:acin/screens/singUp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_launcher/url_launcher.dart';
class Login extends StatefulWidget {
  static String id = 'Login_page';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Color colorClaro = new Color(0xffCBD49D);
  Color colorMedio = new Color(0xff9BB350);
  Color colorOscuro = new Color(0xff87A44D);
  double textScaleScreenWidth=0.04;
   String _email;
   String _password;
  String _errorStatus='';
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  static const _urlPoliticas = 'https://unal.edu.co/tratamiento-de-datos-personales.html';

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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

  PreferredSizeWidget Barrita(context){
    return new AppBar();
  }
  void _launchURL() async => await canLaunch(_urlPoliticas) ? await launch(_urlPoliticas) : throw 'Could not launch $_urlPoliticas';

  Widget cuerpo(context){
    return new ListView(
      children: [
        Container(height:MediaQuery.of(context).size.height*0.1,),
        _formulario(context),
      ],
    );
  }
  Widget _formulario(context){
    return new Form(
      key: _formkey,
        child: Container(
      margin: margenNormal(context),
      child: Column(
        children: [
          Container(height:MediaQuery.of(context).size.height*0.075,),
          emailField(context),
          Container(height:MediaQuery.of(context).size.height*0.025,),
          passwordField(context),
          //Container(height:MediaQuery.of(context).size.height*0.005,),

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
          submitButton(context),
          Container(height:MediaQuery.of(context).size.height*0.015,),
          Container(
            child: InkWell(
              child: Text('¿Olvido su contraseña?',
                style: TextStyle(
                    fontFamily: "Ancizar",
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecuperarContrasena()),
                );
              },
            ),),

          Container(height:MediaQuery.of(context).size.height*0.025,),
          Container(
            child: InkWell(
              child: Text('Registrarse',
                style: TextStyle(
                    fontFamily: "Ancizar",
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registro()),
                );
                },
            ),),

          Container(height:MediaQuery.of(context).size.height*0.05,),

          Container(
            child: InkWell(
              child: Text('V 1.0.1\nPolíticas',
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
    )
    );
  }
  _estiloLetra1Error(context) {
    return new TextStyle(
      //fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.028,
        color: Color(0xffCF272A));
  }

  Widget emailField(context){//(LoginBloc bloc){
    return StreamBuilder(
      //stream: bloc.email,
        builder: (context,snapshot) {
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
              errorStyle: _estiloLetra1Error(context),
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
            ),

          );
        }
    );
  }

  Widget passwordField(context){//(LoginBloc bloc){
    return StreamBuilder(
      builder: (context, snapshot){
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          style: new TextStyle(
            fontFamily: "Ancizar",
            fontSize: MediaQuery.of(context).size.width * 0.06,
            color: colorOscuro,
          ),
          obscureText: true,
          onSaved: (input)=>_password=input,
          validator: (input){
            if(input.length<3){
              return 'Contraseña debe tener mínimo 8 caracteres';
            }
          },
          //onChanged: bloc.changePassword,
          decoration: InputDecoration(
            errorStyle: _estiloLetra1Error(context),
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
              borderSide: BorderSide(
                color: colorClaro,
              ),
            ),
            prefixIcon: Icon(Icons.lock_outline, color: colorOscuro,),
            hintText: 'Password',
            hintStyle: TextStyle(
              fontFamily: "Ancizar",
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: colorOscuro,
            ),
            focusColor: colorClaro,
            filled: true,
            fillColor: colorClaro,
            //errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton(context){
    return StreamBuilder(
      //stream: bloc.submitValid,
      builder: (context,snapshot){
        return ElevatedButton(
            style: ElevatedButton.styleFrom(

              fixedSize: Size.fromWidth(
                  MediaQuery.of(context).size.width * 0.8,
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
                'Acceder',
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


  void Acceder() async {
    final formState=_formkey.currentState;
    if(formState.validate()){
      try{
        //print(_password);
        formState.save();
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _email,
            password: _password
        );

        addIntToSFNormal();

        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => MainMenu()),
              (Route<dynamic> route) => false,
        );

      }on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          setState(() {
            _errorStatus = '\nEl usuario no existe\n';
          });
        } else if (e.code == 'wrong-password') {
          setState(() {
            _errorStatus = '\nLa contraseña es incorrecta\n';
          });
        }else {
          setState(() {
            _errorStatus = e.code;
          });
        }
      }
    }else{

    }
  }
  _estiloLetra1(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: Colors.white);
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

  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.1,
        left: MediaQuery.of(context).size.width*0.1
    );
  }

}

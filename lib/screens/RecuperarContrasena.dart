import 'package:acin/ReusableWidgets/barraInferior.dart';
import 'package:acin/ReusableWidgets/barraSuperior.dart';
import 'package:acin/ReusableWidgets/toLowerCase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:acin/screens/recuperacioncontrasenaExitosa.dart';
import 'package:flutter/material.dart';
class RecuperarContrasena extends StatefulWidget {
  const RecuperarContrasena({Key key}) : super(key: key);

  @override
  _RecuperarContrasenaState createState() => _RecuperarContrasenaState();
}

class _RecuperarContrasenaState extends State<RecuperarContrasena> {
  @override
  Color colorClaro = new Color(0xffCBD49D);
  Color colorMedio = new Color(0xff9BB350);
  Color colorOscuro = new Color(0xff87A44D);
  double textScaleScreenWidth=0.04;
  bool _enviado = false;
  String _email = "";
  String _password = "";
  String _errorStatus='';
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  static const _urlPoliticas = 'https://unal.edu.co/tratamiento-de-datos-personales.html';
  Widget build(BuildContext context) {

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
  Widget cuerpo(context){
    return new ListView(
      children: [
        Container(height:MediaQuery.of(context).size.height*0.1,),
        _formulario(context),
      ],
    );
  }

  Widget _formulario(context){
    return new Container(
      margin: margenNormal(context),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(height:MediaQuery.of(context).size.height*0.15,),
            Container(
              width: double.infinity,
              child: Text('Ingrese el correo asociado a su cuenta.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: "Ancizar",
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
            emailField(context),
            Container(
              width: double.infinity,
              child: Text(_errorStatus,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: "Ancizar",
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
            Container(height:MediaQuery.of(context).size.height*0.025,),

            submitButton(context),
          ],
        ),
      ),
    );
  }

  Widget emailField(context){
          return TextFormField(
            inputFormatters: [UpperCaseTextFormatter(),],
            style: new TextStyle(
              fontFamily: "Ancizar",
              fontSize: MediaQuery.of(context).size.width * 0.06,
              color: colorOscuro,
            ),
            validator: (value){
              if(value.isEmpty){
                return "Por favor, llene el campo";
              }
              else if(!value.contains('@')){
                return 'Escribe un email válido';
              }
              else{return null;}
            },
            onSaved: (String input)=>_email=input,
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
              final formState=_formkey.currentState;
              if(formState.validate()){
                formState.save();
                FirebaseAuth.instance.sendPasswordResetEmail(email: _email).
                then((value) => setState(() {
                  _enviado = true;
                  Navigator.push(// remover
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new RecuperacionContrasenaExitosa()));
                }))
                .catchError(
                  (e) => setState((){_errorStatus = e.toString();})
                );
              }
              //  Acceder();
            }
        );
      },
    );
  }

  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.1,
        left: MediaQuery.of(context).size.width*0.1
    );
  }
}

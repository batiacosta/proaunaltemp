import 'package:acin/screens/mainMenu.dart';
import 'package:flutter/material.dart';

class Volver extends StatelessWidget {
  String atrasRuta;
  int modo;
  Volver(this.modo, this.atrasRuta);

  @override
  Widget build(BuildContext context) {
    if(modo==1){
      return _volverPrimero(context, atrasRuta);
    }else if(modo==2){
      return _volverSegundo(context, atrasRuta);
    }else{return new Container(height: 1,);}
  }
  Widget _volverPrimero(context, ruta){
    return new Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
              ),
              child:Image.asset('assets/home.png', ),
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) => MainMenu()),
                      (Route<dynamic> route) => false,
                );
              },
            ),
          ),
          Expanded(child: Container(height: 1,),),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
              ),
              child:Image.asset('assets/volver.png', ),
              onPressed: (){
                Navigator.pushNamed(context, ruta);
              },
            ),
          )
        ],
      ),
    );
  }
  Widget _volverSegundo(context, ruta){
    return new Container(
      child: Row(
        children: <Widget>[
          Expanded(child: Container(height: 1,),),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0x00ffffff)),
              ),
              child:Image.asset('assets/volver.png', ),
              onPressed: (){
                Navigator.pushNamed(context, atrasRuta);
              },
            ),
          )
        ],
      ),
    );
  }
}

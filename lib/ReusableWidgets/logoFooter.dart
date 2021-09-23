import 'package:flutter/material.dart';

class LogoFooter extends StatelessWidget {
  int variante;
  Color color;
  LogoFooter(this.variante, this.color) ;

  @override
  Widget build(BuildContext context) {
    if(variante==1){
      return logoColorSinFondo(context);
    }else if(variante==2){
      return logoBlancoFondoColor(context);
    }else{
      return new Container();
    }
  }
  Widget logoColorSinFondo(context){
    return new Container(
      width:MediaQuery.of(context).size.width*0.1,
      height: MediaQuery.of(context).size.height*0.1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/unalLogo.png"),
        ),
      ),
    );
  }

  Widget logoBlancoFondoColor(context){
    return new Container(
      width: double.infinity,
      color: color,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height*0.01,
        bottom: MediaQuery.of(context).size.height*0.01,
      ),
      child: Container(
        width:MediaQuery.of(context).size.width*0.1,
        height: MediaQuery.of(context).size.height*0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/unalLogoWhite.png"),
          ),
        ),
      ),
    );
  }
}

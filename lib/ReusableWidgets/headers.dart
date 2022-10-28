import 'package:flutter/material.dart';
class Headers extends StatelessWidget {
  Color colorHex;
  String title;
  String imageRoute;
  Headers(this.colorHex, this.title, this.imageRoute) ;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: colorHex,
      child: Column(
        children: [
          Container(height: MediaQuery.of(context).size.height*0.025,),
          Container(
            margin: margenNormal(context),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.025,),
                  width:MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageRoute),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.width*0.2,
                    child: Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.justify,
                        style: _estiloLetra1(context),
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
          Container(height: MediaQuery.of(context).size.height*0.015,),
        ],
      ),
    );
  }
  _estiloLetra1(context) {
    return new TextStyle(
        fontFamily: 'Ancizar',
        fontSize: MediaQuery.of(context).size.width * 0.06,
        color: Colors.white);
  }
  margenNormal(context){
    return EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.08,
        left: MediaQuery.of(context).size.width*0.08
    );
  }
}

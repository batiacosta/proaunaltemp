import 'package:flutter/material.dart';
class ImagenEncabezadoSeccion extends StatelessWidget {
  String imageRoute;
  ImagenEncabezadoSeccion(this.imageRoute) ;

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageRoute);
  }
}

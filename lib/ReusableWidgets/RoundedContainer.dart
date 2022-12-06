import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:flutter/material.dart';
class RoundedContainer extends StatelessWidget {
  Color color;
  Color colorText;
  String text;
  RoundedContainer({
    Key key,
    this.color,
    this.text,
    this.colorText
  }) : super(key: key);

  GeneralSettings s = GeneralSettings();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: s.margenNormalEspaciado(context),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(s.radiousValue))
      ),
      child: Text(
        '$text',
        textAlign: TextAlign.center,
        style: s.h1Bold(context, colorText),
      ),
    );
  }
}

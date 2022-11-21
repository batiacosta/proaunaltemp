import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:flutter/material.dart';

class SquaredCenteredBold extends StatelessWidget {
  Color color;
  Color textColor;
  String text;
  SquaredCenteredBold({Key key,
    this.color
  ,this.textColor
  ,this.text}) : super(key: key);

  GeneralSettings s = new GeneralSettings();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: s.margenNormalEspaciado(context),
      decoration: BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(
            color: textColor,
            width: 3
          )
        )
      ),
      child: Text(
        '$text',
        style: s.regularBold(context, textColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:flutter/material.dart';

class BulletPointRegularGeneric extends StatelessWidget {
  Color color;
  String text;
  String bullet;
  Color colorText;
  BulletPointRegularGeneric({Key key,
    this.color,
    this.text,
    this.bullet,
  this.colorText,
  }) : super(key: key);

  GeneralSettings s = GeneralSettings();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$bullet ',
            style: s.regularBold(context, color),
          ),
          Expanded(
              child: Text(
                '$text',
                style: s.regular(context, colorText),
              )
          )
        ],
      ),
    );
  }
}

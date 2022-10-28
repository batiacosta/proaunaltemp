import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:flutter/material.dart';

class BulletPointBold extends StatelessWidget {
  Color color;
  String text;
  Color colorText;
  BulletPointBold({Key key,
    this.color,
    this.text,
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
            '• ',
            style: s.regularBold(context, color),
          ),
          Expanded(
              child: Text(
                '$text',
                style: s.regularBold(context, colorText),
              )
          )
        ],
      ),
    );
  }
}

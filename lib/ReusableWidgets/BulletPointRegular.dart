import 'package:acin/ReusableWidgets/GenralSettings.dart';
import 'package:flutter/material.dart';

class BulletPointRegular extends StatelessWidget {
  Color color;
  String text;
  Color colorText;
  String align;
  BulletPointRegular({Key key,
    this.color,
    this.text,
  this.colorText,
    this.align,
  }) : super(key: key);

  GeneralSettings s = GeneralSettings();

  @override
  Widget build(BuildContext context) {
    TextAlign textAlign;
    if(align == null){
      textAlign = TextAlign.left;
    }else if(align == 'j'){
      textAlign = TextAlign.justify;
    }
    else if(align == 'c'){
      textAlign = TextAlign.center;
    }else{
      textAlign = TextAlign.left;
    }
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
                style: s.regular(context, colorText),
                textAlign: textAlign,
              )
          )
        ],
      ),
    );
  }
}

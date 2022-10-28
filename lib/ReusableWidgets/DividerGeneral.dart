import 'package:flutter/material.dart';

class DividerGeneral extends StatelessWidget {
  Color color;
  DividerGeneral({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: 1,
    );
  }
}

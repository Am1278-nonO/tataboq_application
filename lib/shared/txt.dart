import 'package:flutter/cupertino.dart';

Widget txt(String text ,Color color,double size, bool bold ){
  return Text('$text',style: TextStyle(
color: color,
fontSize: size,
fontWeight: bold?FontWeight.bold:null,
),);
}


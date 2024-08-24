import 'package:flutter/material.dart';
import 'package:tataboq_application/imagePage.dart';



void main() {
runApp( tataboq_application());
}
class tataboq_application extends StatelessWidget {
const tataboq_application({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home:(home()),
);
}
}
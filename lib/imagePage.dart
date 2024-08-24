import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tataboq_application/shared/txt.dart';
import 'dart:math';
class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Widget buildImage(int I){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 0,
          ),
          onPressed: (){
            setState(() {
              rightImage=Random().nextInt(8)+1;
              leftImage=Random().nextInt(8)+1;
            });
          },
          child: Image(image: AssetImage(
              'images/image-$I.png'

          ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );}
  int leftImage=2;
int rightImage=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff448AFF),
      title:txt('تطابق الصوره',Colors.white
          ,
       20,true),
      ),

      backgroundColor: Color(0xff303F9F),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  leftImage == rightImage?
  txt('مبروك لقد نجحت', Colors.white, 40, true)
:
  txt('حاول مره اخري', Colors.white, 40, true),
  Row(
    children: [

        buildImage( leftImage),
      buildImage(rightImage),

    ],
  )
],
),
    );
  }
}
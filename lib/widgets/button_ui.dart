import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  String txt ='';
  Function() ontap  ;
  Buttons({super.key , required this.ontap , required this.txt});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.black
        ),
        onPressed:ontap ,
        child: Text(txt ,
          style: TextStyle(
              color: Colors.white
          ),));
  }
}
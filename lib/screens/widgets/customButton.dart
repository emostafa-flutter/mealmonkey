import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? txt;
  Color? colorBorder;
  IconData ? icon ;
  Color? colorBG;

  Color? colorTxt;
Function ? function;
  CustomButton(
      {this.txt='',
      this.colorBG = Colors.deepOrange,
      this.colorBorder = Colors.transparent,
      this.colorTxt = Colors.white,this.icon ,this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.88,
      child: ElevatedButton(

        onPressed: (){
          function!();
        },
        style: ElevatedButton.styleFrom(

          primary: colorBG,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: colorBorder!,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [



              Text(
                txt!,
                style: TextStyle(fontSize: 20, color: colorTxt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

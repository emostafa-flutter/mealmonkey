import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
  String? txt;
  Color? colorBorder;
  IconData ? icon ;
  Color? colorBG;

  Color? colorTxt;

  CustomButtonSocial(
      {this.txt='',
        this.colorBG = Colors.deepOrange,
        this.colorBorder = Colors.transparent,
        this.colorTxt = Colors.white,this.icon });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.88,
      child: ElevatedButton(

        onPressed: () {},
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
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Icon(icon),
                ),


              Text(
                txt!,
                textAlign: TextAlign.center,

                style: TextStyle(fontSize: 16, color: colorTxt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
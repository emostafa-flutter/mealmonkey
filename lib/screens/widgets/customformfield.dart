import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final int maxline;
  final String labeltxt;
  TextEditingController? textEditingController;

  TextFormFieldCustom(
      {required this.labeltxt, this.maxline = 1, this.textEditingController });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(

          maxLines: maxline,
          controller: textEditingController,
          decoration: InputDecoration(

enabledBorder: OutlineInputBorder(
  borderSide:BorderSide(
      width: 5,
      color: Colors.transparent
  ) ,
  borderRadius: BorderRadius.circular(30),
),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              fillColor: Colors.transparent,
              hintText: '     $labeltxt',
              border: OutlineInputBorder(

                borderSide:BorderSide(
                  width: 5,
                  color: Colors.red
                ) ,
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }
}